# /backend/main.py
import functions_framework
from flask import Flask, jsonify, request
from auth import firebase_auth_required
from datetime import date
from logic import determine_class


# Initialize the Flask application
app = Flask(__name__)

# A simple unprotected endpoint to show that the API is running
@app.route('/')
def health_check():
    return jsonify({'status': 'API is running'}), 200

# An example of a protected endpoint
# This endpoint will only be accessible if a valid Firebase ID token is provided
@app.route('/protected-data', methods=['GET'])
@firebase_auth_required
def get_protected_data():
    # The user's UID is attached to the request object by the decorator
    user_uid = request.uid
    return jsonify({
        'message': f'Hello, user {user_uid}! This is protected data.',
        'data': 'You have successfully authenticated.'
    }), 200

# An example of a protected endpoint using the determine_class function
@app.route('/student-class', methods=['POST'])
@firebase_auth_required
def get_student_class():
    # The user's UID is attached to the request object by the decorator,
    # though it's not used in this specific function.
    # user_uid = request.uid

    # Parse the request body for the date of birth
    data = request.json
    dob_string = data.get('date_of_birth')

    if not dob_string:
        return jsonify({'error': 'date_of_birth is required'}), 400

    try:
        # Convert the string to a date object
        dob = date.fromisoformat(dob_string)
        student_class = determine_class(dob)
        return jsonify({
            'date_of_birth': dob_string,
            'guessed_class': student_class
        }), 200
    except ValueError:
        return jsonify({'error': 'Invalid date format. Expected YYYY-MM-DD.'}), 400

# This decorator is now the entry point for the Cloud Function,
# simplifying the request routing process.
@functions_framework.http
def notanerd_api_function(request):
    """Entry point for the Cloud Function."""
    return app(request.environ, lambda s, h: [s, h])

