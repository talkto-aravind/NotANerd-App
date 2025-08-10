# /backend/tests/test_api.py

from datetime import date
from logic import determine_class

# A fixed reference date for deterministic testing, matching the assumed school year.
REFERENCE_DATE = date(2024, 6, 1)

def test_student_is_exactly_five_on_june_1st():
    """
    Test a student who is exactly 5 years old on the reference date.
    This should return 1, indicating they are eligible for 1st grade.
    """
    dob = date(2019, 6, 1)
    assert determine_class(dob, current_date=REFERENCE_DATE) == 1

def test_student_is_older_than_five_on_june_1st():
    """
    Test a student who is older than 5 on the reference date.
    This should also return 1.
    """
    dob = date(2018, 5, 30)
    assert determine_class(dob, current_date=REFERENCE_DATE) == 1

def test_student_is_younger_than_five_on_june_1st():
    """
    Test a student who is younger than 5 on the reference date.
    This should now return 0.
    """
    dob = date(2019, 6, 2)
    assert determine_class(dob, current_date=REFERENCE_DATE) == 0

def test_invalid_date_of_birth_is_in_the_future():
    """
    Test an invalid date of birth (e.g., in the future).
    This should now return -1.
    """
    # The reference date is June 1st, 2024. This DOB is in the future.
    dob = date(2025, 1, 1)
    assert determine_class(dob, current_date=REFERENCE_DATE) == -1
