# /backend/logic.py

from datetime import date, timedelta

def determine_class(date_of_birth, current_date=None):
    """
    Determines the student's class based on their date of birth as per CBSE rules.
    A student is in 1st grade if they are 5 years or older as of June 1st.

    Args:
        date_of_birth (date): The student's date of birth.
        current_date (date, optional): The date to use for the calculation. If None,
                                       the function uses the current date. Defaults to None.

    Returns:
        int: The guessed class (1, 0, or -1 for error).
    """
    if current_date is None:
        current_date = date.today()

    # The academic year starts on June 1st.
    # We use the current_date to determine the academic year start date.
    academic_year_start = date(current_date.year, 6, 1)

    # If the date of birth is in the future relative to the academic year start, it's an error.
    if date_of_birth > academic_year_start:
        return -1

    # Calculate the student's age on the start of the academic year.
    age_in_years = (academic_year_start - date_of_birth).days / 365.25

    # A student is in 1st grade if they are 5 years or older as of June 1st.
    if age_in_years >= 5:
        return 1
    elif age_in_years > 0:
        return 0  # For a student who is not yet in 1st grade.
    else:
        # This case is now more robust due to the check for future dates.
        return -1

        

