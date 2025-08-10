# /backend/test_main.py

from datetime import date
from logic import determine_class

fixed_date = date(2024, 8, 10) # Using a fixed date for the demonstration

dob_student_1 = date(2019, 6, 1)  # Exactly 5 on June 1st, 2024
print(f"DOB: {dob_student_1}, Class: {determine_class(dob_student_1, fixed_date)}")

dob_student_2 = date(2018, 5, 30) # Older than 5
print(f"DOB: {dob_student_2}, Class: {determine_class(dob_student_2, fixed_date)}")

dob_student_3 = date(2020, 6, 2) # Younger than 5
print(f"DOB: {dob_student_3}, Class: {determine_class(dob_student_3, fixed_date)}")

dob_student_4 = date(2025, 1, 1) # Invalid (future) DOB
print(f"DOB: {dob_student_4}, Class: {determine_class(dob_student_4, fixed_date)}")