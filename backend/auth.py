# /backend/auth.py
import functools
import os
from flask import request, jsonify
from firebase_admin import auth, credentials, initialize_app

# The path to your service account key file, stored as a Cloud Function environment variable.
service_account_path = os.environ.get('FIREBASE_CREDENTIALS_PATH')

# Initialize the Firebase Admin SDK with the service account credentials.
try:
    if service_account_path:
        cred = credentials.Certificate(service_account_path)
        initialize_app(cred)
except Exception as e:
    print(f"Error initializing Firebase Admin SDK: {e}")
    # The Cloud Function will fail to deploy if this initialization fails.
    raise e


def firebase_auth_required(func):
    """
    A decorator to protect API endpoints by verifying the Firebase ID token.
    It expects the token to be in the 'Authorization' header as a Bearer token.
    """
    @functools.wraps(func)
    def wrapper(*args, **kwargs):
        # Check for the 'Authorization' header in the request.
        auth_header = request.headers.get('Authorization')
        if not auth_header:
            return jsonify({'error': 'Authorization header is missing.'}), 401

        # The token should be in the format "Bearer <token>".
        id_token = auth_header.split(' ').pop()
        if not id_token:
            return jsonify({'error': 'Bearer token not found.'}), 401
        
        try:
            # Verify the token with the Firebase Admin SDK.
            decoded_token = auth.verify_id_token(id_token)
            request.uid = decoded_token['uid'] # Attach user ID to the request
            return func(*args, **kwargs)
        except auth.ExpiredIdTokenError:
            return jsonify({'error': 'ID token has expired.'}), 401
        except auth.InvalidIdTokenError:
            return jsonify({'error': 'ID token is invalid.'}), 401
        except Exception as e:
            print(f"Error verifying token: {e}")
            return jsonify({'error': 'An unexpected error occurred during token verification.'}), 500

    return wrapper
