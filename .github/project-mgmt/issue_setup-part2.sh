#!/bin/bash

# ==============================================================================
# GitHub Milestone and Issue Creation Script
# This script uses the GitHub CLI (`gh`) to create milestones and issues
# based on the provided project plan. It is designed to be run from the
# root of your project repository.
#
# Prerequisites:
# 1. GitHub CLI (`gh`) must be installed and authenticated.
# 2. This script must be run from the root of your git repository.
# ==============================================================================

# --- Create all necessary Labels first ---
echo "Creating Labels..."
gh label create 'backend' --color 'E6E6FA' --description 'Tasks related to backend development.'
gh label create 'frontend' --color 'ADD8E6' --description 'Tasks related to frontend development.'
gh label create 'ui/ux' --color '9370DB' --description 'User interface and user experience tasks.'
gh label create 'testing' --color 'FBCA04' --description 'Tasks related to writing and running tests.'
gh label create 'security' --color 'B60205' --description 'Tasks related to security and authentication.'
gh label create 'authentication' --color '5319E7' --description 'Tasks related to user authentication and login.'
gh label create 'firebase' --color 'FFCA28' --description 'Tasks involving Firebase services.'
gh label create 'project-management' --color '0E8A16' --description 'Tasks related to project planning and tracking.'
gh label create 'api' --color '0075CA' --description 'Tasks related to API development and integration.'

# --- Create Milestones ---
echo "Creating Milestones..."
#gh api --method POST /repos/:owner/:repo/milestones -f title='6. Milestone 6: User Authentication and Core Profile Management' -f description='Focuses on implementing user registration, social login, and core profile management features.'
#gh api --method POST /repos/:owner/:repo/milestones -f title='7. Milestone 7: CBSE Syllabus and Curriculum Management' -f description='Integrates CBSE curriculum data and allows users to manage subjects and lessons.'
#gh api --method POST /repos/:owner/:repo/milestones -f title='8. Milestone 8: AI-Generated Study Timetable' -f description='Develops and implements the AI-based study timetable generation and display.'
#gh api --method POST /repos/:owner/:repo/milestones -f title='9. Milestone 9: Exam Schedule and Syllabus Management' -f description='Allows users to input and manage exam schedules and syllabus to adjust the study timetable.'
#gh api --method POST /repos/:owner/:repo/milestones -f title='10. Milestone 10: Study Progress Tracking and Motivation' -f description='Implements features for tracking study progress and providing motivational messages.'
#gh api --method POST /repos/:owner/:repo/milestones -f title='11. Milestone 11: Application Enhancements and Final Touches' -f description='Refines the UI/UX and branding of the application.'
#gh api --method POST /repos/:owner/:repo/milestones -f title='12. Milestone 12: Initial Deployment and Quality Assurance' -f description='Covers pre-release testing, optimization, and final deployment preparations.'

# --- Create Issues and link them to Milestones ---

# Set Milestone variables for easier use
MILESTONE6="6. Milestone 6: User Authentication and Core Profile Management"
MILESTONE7="7. Milestone 7: CBSE Syllabus and Curriculum Management"

# ------------------------------------------------------------------------------
# Issues for Milestone 6
# ------------------------------------------------------------------------------
echo "Creating Issues for Milestone 6..."

# Phase 6.1
#gh issue create --title "6.1. Phase 6.1: User Onboarding and Account Creation" --milestone "$MILESTONE6" --label "frontend,backend,authentication" --body "This phase covers all aspects of user account creation, including social logins and initial profile setup."

# Target 6.1.1
#gh issue create --title "6.1.1. Target 6.1.1: Implement User Registration" --milestone "$MILESTONE6" --label "frontend,backend,authentication,security" --body "This target focuses on implementing various methods for users to register for the application."

# Task 6.1.1.1
#gh issue create --title "6.1.1.1. Task 6.1.1.1: Implement Social Login (OpenID/OAuth)" --milestone "$MILESTONE6" --label "frontend,backend,authentication,firebase" --body "This task involves setting up and integrating social login options using Firebase Authentication."

#gh issue create --title "6.1.1.1.1. Sub-task: Develop and set up Firebase Authentication for Google Sign-in." --milestone "$MILESTONE6" --label "backend,firebase,authentication" --body " "
#gh issue create --title "6.1.1.1.2. Sub-task: Develop test case files for Google Sign-in functionality." --milestone "$MILESTONE6" --label "testing" --body " "
#gh issue create --title "6.1.1.1.3. Sub-task: Perform testing activities for Google Sign-in." --milestone "$MILESTONE6" --label "testing" --body " "
#gh issue create --title "6.1.1.1.4. Sub-task: Develop and set up Firebase Authentication for Apple Sign-in." --milestone "$MILESTONE6" --label "backend,firebase,authentication" --body " "
#gh issue create --title "6.1.1.1.5. Sub-task: Develop test case files for Apple Sign-in functionality." --milestone "$MILESTONE6" --label "testing" --body " "
#gh issue create --title "6.1.1.1.6. Sub-task: Perform testing activities for Apple Sign-in." --milestone "$MILESTONE6" --label "testing" --body " "
#gh issue create --title "6.1.1.1.7. Sub-task: Develop and set up Firebase Authentication for Facebook Sign-in." --milestone "$MILESTONE6" --label "backend,firebase,authentication" --body " "
#gh issue create --title "6.1.1.1.8. Sub-task: Develop test case files for Facebook Sign-in functionality." --milestone "$MILESTONE6" --label "testing" --body " "
#gh issue create --title "6.1.1.1.9. Sub-task: Perform testing activities for Facebook Sign-in." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.1.10. Sub-task: Develop and set up Firebase Authentication for Microsoft Sign-in." --milestone "$MILESTONE6" --label "backend,firebase,authentication" --body " "
gh issue create --title "6.1.1.1.11. Sub-task: Develop test case files for Microsoft Sign-in functionality." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.1.12. Sub-task: Perform testing activities for Microsoft Sign-in." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.1.13. Sub-task: Develop and implement Frontend UI for Social Login buttons." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.1.1.14. Sub-task: Develop test case files for the Social Login UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.1.15. Sub-task: Perform testing activities for the Social Login UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.1.16. Sub-task: Develop and integrate Firebase Auth SDK in Flutter for Social Logins." --milestone "$MILESTONE6" --label "frontend,firebase" --body " "
gh issue create --title "6.1.1.1.17. Sub-task: Develop test case files for the SDK integration." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.1.18. Sub-task: Perform testing activities for the SDK integration." --milestone "$MILESTONE6" --label "testing" --body " "

# Task 6.1.1.2
gh issue create --title "6.1.1.2. Task 6.1.1.2: Implement Email/Phone Number Registration" --milestone "$MILESTONE6" --label "frontend,backend,authentication,firebase" --body "This task involves implementing traditional email/password and phone number-based registration." --body " "

gh issue create --title "6.1.1.2.1. Sub-task: Develop and set up Firebase Authentication for Email/Password." --milestone "$MILESTONE6" --label "backend,firebase,authentication" --body " "
gh issue create --title "6.1.1.2.2. Sub-task: Develop test case files for Email/Password authentication." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.3. Sub-task: Perform testing activities for Email/Password authentication." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.4. Sub-task: Develop and set up Firebase Authentication for Phone Number." --milestone "$MILESTONE6" --label "backend,firebase,authentication" --body " "
gh issue create --title "6.1.1.2.5. Sub-task: Develop test case files for Phone Number authentication." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.6. Sub-task: Perform testing activities for Phone Number authentication." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.7. Sub-task: Develop and implement Frontend UI for Email/Phone Number Registration." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.1.2.8. Sub-task: Develop test case files for the Email/Phone Registration UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.9. Sub-task: Perform testing activities for the Email/Phone Registration UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.10. Sub-task: Develop and integrate Firebase Auth SDK in Flutter for Email/Phone Login." --milestone "$MILESTONE6" --label "frontend,firebase" --body " "
gh issue create --title "6.1.1.2.11. Sub-task: Develop test case files for the SDK integration." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.1.2.12. Sub-task: Perform testing activities for the SDK integration." --milestone "$MILESTONE6" --label "testing" --body " "

# Target 6.1.2
gh issue create --title "6.1.2. Target 6.1.2: User Profile Creation and Initial Data Capture" --milestone "$MILESTONE6" --label "frontend,backend,firebase" --body "This target focuses on collecting initial user data and creating a profile after successful registration." --body " "

# Task 6.1.2.1
gh issue create --title "6.1.2.1. Task 6.1.2.1: Implement User Type Selection and Redirection" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux,firebase" --body "This task involves allowing users to select their type (Student, Teacher, Parent) and redirecting them to the appropriate form." --body " "

gh issue create --title "6.1.2.1.1. Sub-task: Design, develop, and implement the User Type Selection UI." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.2.1.2. Sub-task: Develop test case files for the User Type Selection UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.1.3. Sub-task: Perform testing activities for the User Type Selection UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.1.4. Sub-task: Develop and implement logic to store user_type in Firestore." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.1.5. Sub-task: Develop test case files for the user_type storage logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.1.6. Sub-task: Perform testing activities for the user_type storage logic." --milestone "$MILESTONE6" --label "testing" --body " "

# Task 6.1.2.2
gh issue create --title "6.1.2.2. Task 6.1.2.2: Implement Student Onboarding Form" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux,firebase" --body "This task involves designing and implementing the specific registration form for student users." --body " "

gh issue create --title "6.1.2.2.1. Sub-task: Design, develop, and implement the Student Registration Form UI." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.2.2.2. Sub-task: Develop test case files for the Student Registration Form UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.3. Sub-task: Perform testing activities for the Student Registration Form UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.4. Sub-task: Develop and implement logic for guessing a student's class based on their DOB." --milestone "$MILESTONE6" --label "backend" --body " "
gh issue create --title "6.1.2.2.5. Sub-task: Develop test case files for the class guessing logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.6. Sub-task: Perform testing activities for the class guessing logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.7. Sub-task: Develop and implement school/location selection using Google Maps services." --milestone "$MILESTONE6" --label "frontend,backend,api" --body " "
gh issue create --title "6.1.2.2.8. Sub-task: Develop test case files for the location selection feature." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.9. Sub-task: Perform testing activities for the location selection feature." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.10. Sub-task: Develop and implement logic to store location and school data." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.2.11. Sub-task: Develop test case files for storing location and school data." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.12. Sub-task: Perform testing activities for storing location and school data." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.13. Sub-task: Design, develop, and implement UI for collecting school timings." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.2.2.14. Sub-task: Develop test case files for the school timings UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.15. Sub-task: Perform testing activities for the school timings UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.16. Sub-task: Develop and implement logic to store school timings." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.2.17. Sub-task: Develop test case files for storing school timings." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.18. Sub-task: Perform testing activities for storing school timings." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.19. Sub-task: Develop and implement logic to use the unique Firebase Auth UID as the Document ID." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.2.20. Sub-task: Develop test case files for the UID as Document ID logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.21. Sub-task: Perform testing activities for the UID as Document ID logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.22. Sub-task: Develop and implement validation for existing user IDs." --milestone "$MILESTONE6" --label "backend,security,authentication" --body " "
gh issue create --title "6.1.2.2.23. Sub-task: Develop test case files for user ID validation." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.2.24. Sub-task: Perform testing activities for user ID validation." --milestone "$MILESTONE6" --label "testing" --body " "

# Task 6.1.2.3
gh issue create --title "6.1.2.3. Task 6.1.2.3: Implement Teacher Onboarding Form" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux,firebase" --body "This task involves designing and implementing the specific registration form for teacher users." --body " "

gh issue create --title "6.1.2.3.1. Sub-task: Design, develop, and implement the Teacher Registration Form UI." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.2.3.2. Sub-task: Develop test case files for the Teacher Registration Form UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.3. Sub-task: Perform testing activities for the Teacher Registration Form UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.4. Sub-task: Develop and implement school/location selection using Google Maps services." --milestone "$MILESTONE6" --label "frontend,backend,api" --body " "
gh issue create --title "6.1.2.3.5. Sub-task: Develop test case files for the location selection feature." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.6. Sub-task: Perform testing activities for the location selection feature." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.7. Sub-task: Develop and implement logic to store location and school data." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.3.8. Sub-task: Develop test case files for storing location and school data." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.9. Sub-task: Perform testing activities for storing location and school data." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.10. Sub-task: Develop and implement logic to use the unique Firebase Auth UID as the Document ID." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.3.11. Sub-task: Develop test case files for the UID as Document ID logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.12. Sub-task: Perform testing activities for the UID as Document ID logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.13. Sub-task: Develop and implement validation for existing user IDs." --milestone "$MILESTONE6" --label "backend,security,authentication" --body " "
gh issue create --title "6.1.2.3.14. Sub-task: Develop test case files for user ID validation." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.3.15. Sub-task: Perform testing activities for user ID validation." --milestone "$MILESTONE6" --label "testing" --body " "

# Task 6.1.2.4
gh issue create --title "6.1.2.4. Task 6.1.2.4: Implement Parent Onboarding Form" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux,firebase" --body "This task involves designing and implementing the specific registration form for parent users." --body " "

gh issue create --title "6.1.2.4.1. Sub-task: Design, develop, and implement the Parent Registration Form UI." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.1.2.4.2. Sub-task: Develop test case files for the Parent Registration Form UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.4.3. Sub-task: Perform testing activities for the Parent Registration Form UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.4.4. Sub-task: Develop and implement logic to use the unique Firebase Auth UID as the Document ID." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.1.2.4.5. Sub-task: Develop test case files for the UID as Document ID logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.4.6. Sub-task: Perform testing activities for the UID as Document ID logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.4.7. Sub-task: Develop and implement validation for existing user IDs." --milestone "$MILESTONE6" --label "backend,security,authentication" --body " "
gh issue create --title "6.1.2.4.8. Sub-task: Develop test case files for user ID validation." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.1.2.4.9. Sub-task: Perform testing activities for user ID validation." --milestone "$MILESTONE6" --label "testing" --body " "

# Phase 6.2
gh issue create --title "6.2. Phase 6.2: User Account Management Features" --milestone "$MILESTONE6" --label "frontend,backend,authentication" --body "This phase covers features for managing existing user accounts, including profile editing and account linking." --body " "

# Target 6.2.1
gh issue create --title "6.2.1. Target 6.2.1: Profile Editing and Display" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux" --body "This target focuses on implementing the functionality to view and edit user profiles." --body " "

# Task 6.2.1.1
gh issue create --title "6.2.1.1. Task 6.2.1.1: Implement User Profile Viewing" --milestone "$MILESTONE6" --label "frontend,ui/ux,firebase" --body "This task involves creating the UI and logic for displaying user profile information." --body " "

gh issue create --title "6.2.1.1.1. Sub-task: Develop and create UI to display user's basic profile information." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.2.1.1.2. Sub-task: Develop test case files for the basic profile display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.1.3. Sub-task: Perform testing activities for the basic profile display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.1.4. Sub-task: Develop and implement logic to display student-specific data for students." --milestone "$MILESTONE6" --label "backend,frontend" --body " "
gh issue create --title "6.2.1.1.5. Sub-task: Develop test case files for the student-specific data display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.1.6. Sub-task: Perform testing activities for the student-specific data display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.1.7. Sub-task: Develop and implement logic to display school/location data for students and teachers." --milestone "$MILESTONE6" --label "backend,frontend" --body " "
gh issue create --title "6.2.1.1.8. Sub-task: Develop test case files for the school/location data display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.1.9. Sub-task: Perform testing activities for the school/location data display." --milestone "$MILESTONE6" --label "testing" --body " "

# Task 6.2.1.2
gh issue create --title "6.2.1.2. Task 6.2.1.2: Implement User Profile Editing" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux,firebase" --body "This task focuses on allowing users to modify their profile details." --body " "

gh issue create --title "6.2.1.2.1. Sub-task: Develop and create UI for editing basic profile information." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.2.1.2.2. Sub-task: Develop test case files for the profile editing UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.3. Sub-task: Perform testing activities for the profile editing UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.4. Sub-task: Develop and implement logic for students to change their class." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.1.2.5. Sub-task: Develop test case files for the class change logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.6. Sub-task: Perform testing activities for the class change logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.7. Sub-task: Develop and implement logic for parents to edit school timings for linked student accounts." --milestone "$MILESTONE6" --label "backend,frontend,firebase" --body " "
gh issue create --title "6.2.1.2.8. Sub-task: Develop test case files for the parent editing logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.9. Sub-task: Perform testing activities for the parent editing logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.10. Sub-task: Develop and implement validation for updating user profiles." --milestone "$MILESTONE6" --label "backend,security" --body " "
gh issue create --title "6.2.1.2.11. Sub-task: Develop test case files for profile update validation." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.1.2.12. Sub-task: Perform testing activities for profile update validation." --milestone "$MILESTONE6" --label "testing" --body " "

# Target 6.2.2
gh issue create --title "6.2.2. Target 6.2.2: Account Linking and Management" --milestone "$MILESTONE6" --label "frontend,backend,ui/ux,firebase" --body "This target focuses on the logic and UI for linking student, teacher, and parent accounts." --body " "

# Task 6.2.2.1
gh issue create --title "6.2.2.1. Task 6.2.2.1: Implement Student-Teacher/Parent Linking Flow" --milestone "$MILESTONE6" --label "frontend,backend,firebase" --body "This task involves the core functionality for sending, accepting, and managing linking requests." --body " "

gh issue create --title "6.2.2.1.1. Sub-task: Design, develop, and implement UI for students to view eligible teachers/parents for linking." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.2.2.1.2. Sub-task: Develop test case files for the linking UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.3. Sub-task: Perform testing activities for the linking UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.4. Sub-task: Develop and implement backend logic for student-initiated link requests." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.5. Sub-task: Develop test case files for student link requests." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.6. Sub-task: Perform testing activities for student link requests." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.7. Sub-task: Develop and implement backend logic for teacher-initiated link requests." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.8. Sub-task: Develop test case files for teacher link requests." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.9. Sub-task: Perform testing activities for teacher link requests." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.10. Sub-task: Develop and implement backend logic for parent-initiated link requests." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.11. Sub-task: Develop test case files for parent link requests." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.12. Sub-task: Perform testing activities for parent link requests." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.13. Sub-task: Develop and implement backend logic for creating connections documents with a pending status." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.14. Sub-task: Develop test case files for the pending status logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.15. Sub-task: Perform testing activities for the pending status logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.16. Sub-task: Design, develop, and implement UI for showing pending link requests." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.2.2.1.17. Sub-task: Develop test case files for the pending requests UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.18. Sub-task: Perform testing activities for the pending requests UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.19. Sub-task: Develop and implement backend logic for approving/denying link requests." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.20. Sub-task: Develop test case files for approval/denial logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.21. Sub-task: Perform testing activities for approval/denial logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.22. Sub-task: Develop and implement backend logic for updating connections status to confirmed." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.23. Sub-task: Develop test case files for the confirmed status logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.24. Sub-task: Perform testing activities for the confirmed status logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.25. Sub-task: Develop and implement backend logic for automatic linking of parents and teachers." --milestone "$MILESTONE6" --label "backend,firebase" --body " "
gh issue create --title "6.2.2.1.26. Sub-task: Develop test case files for the automatic linking logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.27. Sub-task: Perform testing activities for the automatic linking logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.28. Sub-task: Develop and implement backend validation for teacher-student linking based on school/location." --milestone "$MILESTONE6" --label "backend,security" --body " "
gh issue create --title "6.2.2.1.29. Sub-task: Develop test case files for the linking validation logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.30. Sub-task: Perform testing activities for the linking validation logic." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.31. Sub-task: Design, develop, and implement UI for showing a message when a link is denied." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.2.2.1.32. Sub-task: Develop test case files for the denial message UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.33. Sub-task: Perform testing activities for the denial message UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.34. Sub-task: Design, develop, and implement UI for teachers to see a list of eligible students." --milestone "$MILESTONE6" --label "frontend,ui/ux" --body " "
gh issue create --title "6.2.2.1.35. Sub-task: Develop test case files for the eligible students list UI." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.1.36. Sub-task: Perform testing activities for the eligible students list UI." --milestone "$MILESTONE6" --label "testing" --body " "

# Task 6.2.2.2
gh issue create --title "6.2.2.2. Task 6.2.2.2: Implement Bidirectional Linking Display" --milestone "$MILESTONE6" --label "frontend,ui/ux,firebase" --body "This task focuses on displaying the established links between different user types." --body " "

gh issue create --title "6.2.2.2.1. Sub-task: Develop and implement logic to display linked teachers and parents for students." --milestone "$MILESTONE6" --label "frontend,backend" --body " "
gh issue create --title "6.2.2.2.2. Sub-task: Develop test case files for the student linking display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.2.3. Sub-task: Perform testing activities for the student linking display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.2.4. Sub-task: Develop and implement logic to display linked students and parents for teachers." --milestone "$MILESTONE6" --label "frontend,backend" --body " "
gh issue create --title "6.2.2.2.5. Sub-task: Develop test case files for the teacher linking display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.2.6. Sub-task: Perform testing activities for the teacher linking display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.2.7. Sub-task: Develop and implement logic to display linked students and teachers for parents." --milestone "$MILESTONE6" --label "frontend,backend" --body " "
gh issue create --title "6.2.2.2.8. Sub-task: Develop test case files for the parent linking display." --milestone "$MILESTONE6" --label "testing" --body " "
gh issue create --title "6.2.2.2.9. Sub-task: Perform testing activities for the parent linking display." --milestone "$MILESTONE6" --label "testing" --body " "


# ------------------------------------------------------------------------------
# Issues for Milestone 7
# ------------------------------------------------------------------------------
echo "Creating Issues for Milestone 7..."

# Phase 7.1
gh issue create --title "7.1. Phase 7.1: Curriculum Data Integration" --milestone "$MILESTONE7" --label "backend,frontend,firebase" --body "This phase covers the integration of CBSE syllabus data and allowing users to customize their curriculum." --body " "

# Target 7.1.1
gh issue create --title "7.1.1. Target 7.1.1: Populate CBSE Syllabus Data" --milestone "$MILESTONE7" --label "backend,firebase,api" --body "This target focuses on the backend logic for fetching and serving CBSE syllabus data." --body " "

# Task 7.1.1.1
gh issue create --title "7.1.1.1. Task 7.1.1.1: Implement Backend Logic for Fetching CBSE Syllabus" --milestone "$MILESTONE7" --label "backend,firebase,api" --body "This task involves creating the core backend logic for handling syllabus data." --body " "

gh issue create --title "7.1.1.1.1. Sub-task: Develop and implement logic to fetch subject, book, and chapter details from Firebase." --milestone "$MILESTONE7" --label "backend,firebase" --body " "
gh issue create --title "7.1.1.1.2. Sub-task: Develop test case files for the data fetching logic." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.1.1.3. Sub-task: Perform testing activities for the data fetching logic." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.1.1.4. Sub-task: Develop and implement an API endpoint to serve CBSE syllabus data to the frontend." --milestone "$MILESTONE7" --label "backend,api" --body " "
gh issue create --title "7.1.1.1.5. Sub-task: Develop test case files for the API endpoint." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.1.1.6. Sub-task: Perform testing activities for the API endpoint." --milestone "$MILESTONE7" --label "testing" --body " "

# Target 7.1.2
gh issue create --title "7.1.2. Target 7.1.2: User Management of Subjects and Lessons" --milestone "$MILESTONE7" --label "frontend,backend,firebase,ui/ux" --body "This target focuses on the user-facing functionality to manage their specific subjects and lessons." --body " "

# Task 7.1.2.1
gh issue create --title "7.1.2.1. Task 7.1.2.1: Implement Add/Remove Subjects and Lessons" --milestone "$MILESTONE7" --label "frontend,backend,firebase,ui/ux" --body "This task involves building the UI and logic for customizing a student's curriculum." --body " "

gh issue create --title "7.1.2.1.1. Sub-task: Design, develop, and implement UI for adding/removing subjects." --milestone "$MILESTONE7" --label "frontend,ui/ux" --body " "
gh issue create --title "7.1.2.1.2. Sub-task: Develop test case files for the add/remove subjects UI." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.3. Sub-task: Perform testing activities for the add/remove subjects UI." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.4. Sub-task: Design, develop, and implement UI for adding/removing lessons within a subject." --milestone "$MILESTONE7" --label "frontend,ui/ux" --body " "
gh issue create --title "7.1.2.1.5. Sub-task: Develop test case files for the add/remove lessons UI." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.6. Sub-task: Perform testing activities for the add/remove lessons UI." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.7. Sub-task: Develop and implement backend logic to update student's curriculum preferences." --milestone "$MILESTONE7" --label "backend,firebase" --body " "
gh issue create --title "7.1.2.1.8. Sub-task: Develop test case files for the curriculum update logic." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.9. Sub-task: Perform testing activities for the curriculum update logic." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.10. Sub-task: Develop and implement logic to obtain PDF version of custom subject/lesson textbooks from the user." --milestone "$MILESTONE7" --label "frontend,backend" --body " "
gh issue create --title "7.1.2.1.11. Sub-task: Develop test case files for the custom textbook upload logic." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.12. Sub-task: Perform testing activities for the custom textbook upload logic." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.13. Sub-task: Develop and implement logic to store PDF URL for custom textbooks in Firebase." --milestone "$MILESTONE7" --label "backend,firebase" --body " "
gh issue create --title "7.1.2.1.14. Sub-task: Develop test case files for the PDF URL storage." --milestone "$MILESTONE7" --label "testing" --body " "
gh issue create --title "7.1.2.1.15. Sub-task: Perform testing activities for the PDF URL storage." --milestone "$MILESTONE7" --label "testing" --body " "


# --- Issues for Milestone 8 ---
echo "Creating Issues for Milestone 8..."

# Define Milestone 8 for consistent linking
MILESTONE_8="8. Milestone 8: AI-Generated Study Timetable"
MILESTONE_9="9. Milestone 9: Exam Schedule and Syllabus Management"

# Issues for Phase 8.1
# Phase 8.1.1 Target 8.1.1: Core Timetable Generation Algorithm
gh issue create --title "8.1.1. Target 8.1.1: Core Timetable Generation Algorithm" --milestone "$MILESTONE_8" --label "project management,backend" --body "This target involves implementing the foundational AI algorithms for generating a study timetable." --body " "
# Task 8.1.1.1: Implement AI-based Timetable Generation Algorithm
gh issue create --title "8.1.1.1. Task 8.1.1.1: Implement AI-based Timetable Generation Algorithm" --milestone "$MILESTONE_8" --label "backend,ai" --body "Develop and implement the core AI logic to dynamically generate study timetables based on user data." --body " "
# Sub-tasks for 8.1.1.1
gh issue create --title "8.1.1.1.1. Sub-task: Develop the initial AI model for dynamic timetable generation." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.2. Sub-task: Develop test case files for the AI model's initial logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.3. Sub-task: Perform testing activities for the AI model's initial logic." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.1.1.4. Sub-task: Develop and implement logic to incorporate school timings into timetable generation." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.5. Sub-task: Develop test case files for the school timings logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.6. Sub-task: Perform testing activities for the school timings logic." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.1.1.7. Sub-task: Develop and implement logic to include meal times, bedtime, and leisure time." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.8. Sub-task: Develop test case files for the non-academic activities logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.9. Sub-task: Perform testing activities for the non-academic activities logic." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.1.1.10. Sub-task: Develop and implement logic to integrate lesson length to determine reading/revision durations." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.11. Sub-task: Develop test case files for the lesson length logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.12. Sub-task: Perform testing activities for the lesson length logic." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.1.1.13. Sub-task: Develop and implement logic to account for working days and holidays." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.14. Sub-task: Develop test case files for the holiday logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.15. Sub-task: Perform testing activities for the holiday logic." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.1.1.16. Sub-task: Develop and implement logic to integrate general holidays from a separate collection." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.17. Sub-task: Develop test case files for the general holiday integration." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.18. Sub-task: Perform testing activities for the general holiday integration." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.1.1.19. Sub-task: Develop and implement logic to store generated timetables in the timetables collection." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.1.1.20. Sub-task: Develop test case files for the timetable storage logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.1.1.21. Sub-task: Perform testing activities for the timetable storage logic." --milestone "$MILESTONE_8" --label "testing" --body ""

# Phase 8.1.2 Target 8.1.2: Timetable Customization and Updates
gh issue create --title "8.1.2. Target 8.1.2: Timetable Customization and Updates" --milestone "$MILESTONE_8" --label "project management" --body "This target involves creating features for users to customize and update their generated timetables."
# Task 8.1.2.1: Implement Holiday Selection
gh issue create --title "8.1.2.1. Task 8.1.2.1: Implement Holiday Selection" --milestone "$MILESTONE_8" --label "frontend,backend" --body "Implement the user interface and backend logic for selecting and managing holidays."
# Sub-tasks for 8.1.2.1
gh issue create --title "8.1.2.1.1. Sub-task: Design, develop, and implement UI for selecting holidays." --milestone "$MILESTONE_8" --label "frontend" --body ""
gh issue create --title "8.1.2.1.2. Sub-task: Develop test case files for the holiday selection UI." --milestone "$MILESTONE_8" --label "frontend,testing" --body ""
gh issue create --title "8.1.2.1.3. Sub-task: Perform testing activities for the holiday selection UI." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.2.1.4. Sub-task: Develop and implement logic to update holiday settings." --milestone "$MILESTONE_8" --label "backend" --body ""
gh issue create --title "8.1.2.1.5. Sub-task: Develop test case files for the holiday settings logic." --milestone "$MILESTONE_8" --label "backend,testing" --body ""
gh issue create --title "8.1.2.1.6. Sub-task: Perform testing activities for the holiday settings logic." --milestone "$MILESTONE_8" --label "testing" --body ""
# Task 8.1.2.2: Implement Lesson Completion Tracking
gh issue create --title "8.1.2.2. Task 8.1.2.2: Implement Lesson Completion Tracking" --milestone "$MILESTONE_8" --label "frontend,backend" --body "Implement functionality for users to track lesson completion and for the timetable to dynamically regenerate based on this status."
# Sub-tasks for 8.1.2.2
gh issue create --title "8.1.2.2.1. Sub-task: Design, develop, and implement UI for marking 'completed reading' or 'completed revisions'." --milestone "$MILESTONE_8" --label "frontend" --body ""
gh issue create --title "8.1.2.2.2. Sub-task: Develop test case files for the completion tracking UI." --milestone "$MILESTONE_8" --label "frontend,testing" --body ""
gh issue create --title "8.1.2.2.3. Sub-task: Perform testing activities for the completion tracking UI." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.2.2.4. Sub-task: Develop and implement backend logic to update study_completion_status in the timetables collection." --milestone "$MILESTONE_8" --label "backend" --body ""
gh issue create --title "8.1.2.2.5. Sub-task: Develop test case files for the completion status update logic." --milestone "$MILESTONE_8" --label "backend,testing" --body ""
gh issue create --title "8.1.2.2.6. Sub-task: Perform testing activities for the completion status update logic." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.1.2.2.7. Sub-task: Develop and implement logic for dynamic timetable regeneration based on completion status." --milestone "$MILESTONE_8" --label "backend,ai" --body ""
gh issue create --title "8.1.2.2.8. Sub-task: Develop test case files for the dynamic regeneration logic." --milestone "$MILESTONE_8" --label "backend,ai,testing" --body ""
gh issue create --title "8.1.2.2.9. Sub-task: Perform testing activities for the dynamic regeneration logic." --milestone "$MILESTONE_8" --label "testing" --body ""

# Phase 8.2: Timetable Display and User Interaction
gh issue create --title "8.2. Phase 8.2: Timetable Display and User Interaction" --milestone "$MILESTONE_8" --label "project management" --body "This phase focuses on the user interface and experience for displaying the generated timetables."
# Target 8.2.1: Timetable UI Implementation
gh issue create --title "8.2.1. Target 8.2.1: Timetable UI Implementation" --milestone "$MILESTONE_8" --label "frontend" --body "This target involves designing and implementing the UI for displaying the study timetable."
# Task 8.2.1.1: Design and Implement Timetable Display UI
gh issue create --title "8.2.1.1. Task 8.2.1.1: Design and Implement Timetable Display UI" --milestone "$MILESTONE_8" --label "frontend" --body "Create a user-friendly and interactive UI for displaying the generated timetable."
# Sub-tasks for 8.2.1.1
gh issue create --title "8.2.1.1.1. Sub-task: Design and develop a child-friendly, colorful, and cartoonish UI theme for the timetable." --milestone "$MILESTONE_8" --label "frontend" --body ""
gh issue create --title "8.2.1.1.2. Sub-task: Develop test case files for the UI theme." --milestone "$MILESTONE_8" --label "frontend,testing" --body ""
gh issue create --title "8.2.1.1.3. Sub-task: Perform testing activities for the UI theme." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.2.1.1.4. Sub-task: Develop and implement a day-wise timetable display in a scrollable table format." --milestone "$MILESTONE_8" --label "frontend" --body ""
gh issue create --title "8.2.1.1.5. Sub-task: Develop test case files for the scrollable table display." --milestone "$MILESTONE_8" --label "frontend,testing" --body ""
gh issue create --title "8.2.1.1.6. Sub-task: Perform testing activities for the scrollable table display." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.2.1.1.7. Sub-task: Develop and implement horizontal and vertical scrolling." --milestone "$MILESTONE_8" --label "frontend" --body ""
gh issue create --title "8.2.1.1.8. Sub-task: Develop test case files for the scrolling functionality." --milestone "$MILESTONE_8" --label "frontend,testing" --body ""
gh issue create --title "8.2.1.1.9. Sub-task: Perform testing activities for the scrolling functionality." --milestone "$MILESTONE_8" --label "testing" --body ""
gh issue create --title "8.2.1.1.10. Sub-task: Develop and implement zoomable functionality for the timetable display." --milestone "$MILESTONE_8" --label "frontend" --body ""
gh issue create --title "8.2.1.1.11. Sub-task: Develop test case files for the zoom functionality." --milestone "$MILESTONE_8" --label "frontend,testing" --body ""
gh issue create --title "8.2.1.1.12. Sub-task: Perform testing activities for the zoom functionality." --milestone "$MILESTONE_8" --label "testing" --body ""

# --- Issues for Milestone 9 ---
echo "Creating Issues for Milestone 9..."

# Phase 9.1: Exam Data Entry
gh issue create --title "9.1. Phase 9.1: Exam Data Entry" --milestone "$MILESTONE_9" --label "project management" --body "This phase covers the user interface and backend logic for entering exam schedules and syllabi."
# Target 9.1.1: Exam Schedule Input
gh issue create --title "9.1.1. Target 9.1.1: Exam Schedule Input" --milestone "$MILESTONE_9" --label "frontend,backend" --body "This target focuses on implementing methods for users to input their exam schedules."
# Task 9.1.1.1: Implement Manual Exam Schedule Entry
gh issue create --title "9.1.1.1. Task 9.1.1.1: Implement Manual Exam Schedule Entry" --milestone "$MILESTONE_9" --label "frontend,backend" --body "Implement a UI for manual data entry of exam schedules and the corresponding backend logic for storing them."
# Sub-tasks for 9.1.1.1
gh issue create --title "9.1.1.1.1. Sub-task: Design, develop, and implement UI for entering exam schedules." --milestone "$MILESTONE_9" --label "frontend" --body ""
gh issue create --title "9.1.1.1.2. Sub-task: Develop test case files for the manual exam schedule UI." --milestone "$MILESTONE_9" --label "frontend,testing" --body ""
gh issue create --title "9.1.1.1.3. Sub-task: Perform testing activities for the manual exam schedule UI." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.1.1.1.4. Sub-task: Develop and implement logic to store exam schedules in a dedicated Firestore collection." --milestone "$MILESTONE_9" --label "backend" --body ""
gh issue create --title "9.1.1.1.5. Sub-task: Develop test case files for the exam schedule storage logic." --milestone "$MILESTONE_9" --label "backend,testing" --body ""
gh issue create --title "9.1.1.1.6. Sub-task: Perform testing activities for the exam schedule storage logic." --milestone "$MILESTONE_9" --label "testing" --body ""
# Task 9.1.1.2: Implement Document Parsing for Exam Schedules
gh issue create --title "9.1.1.2. Task 9.1.1.2: Implement Document Parsing for Exam Schedules" --milestone "$MILESTONE_9" --label "backend" --body "Implement functionality to parse exam schedule information from various file types."
# Sub-tasks for 9.1.1.2
gh issue create --title "9.1.1.2.1. Sub-task: Develop and integrate Google Drive API for file access." --milestone "$MILESTONE_9" --label "backend,api" --body ""
gh issue create --title "9.1.1.2.2. Sub-task: Develop test case files for the Google Drive integration." --milestone "$MILESTONE_9" --label "backend,api,testing" --body ""
gh issue create --title "9.1.1.2.3. Sub-task: Perform testing activities for the Google Drive integration." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.1.1.2.4. Sub-task: Develop and implement PDF parsing functionality." --milestone "$MILESTONE_9" --label "backend" --body ""
gh issue create --title "9.1.1.2.5. Sub-task: Develop test case files for the PDF parsing functionality." --milestone "$MILESTONE_9" --label "backend,testing" --body ""
gh issue create --title "9.1.1.2.6. Sub-task: Perform testing activities for the PDF parsing functionality." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.1.1.2.7. Sub-task: Develop and implement image OCR functionality." --milestone "$MILESTONE_9" --label "backend,ai" --body ""
gh issue create --title "9.1.1.2.8. Sub-task: Develop test case files for the OCR functionality." --milestone "$MILESTONE_9" --label "backend,ai,testing" --body ""
gh issue create --title "9.1.1.2.9. Sub-task: Perform testing activities for the OCR functionality." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.1.1.2.10. Sub-task: Develop and implement spreadsheet parsing functionality." --milestone "$MILESTONE_9" --label "backend" --body ""
gh issue create --title "9.1.1.2.11. Sub-task: Develop test case files for the spreadsheet parsing functionality." --milestone "$MILESTONE_9" --label "backend,testing" --body ""
gh issue create --title "9.1.1.2.12. Sub-task: Perform testing activities for the spreadsheet parsing functionality." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.1.1.2.13. Sub-task: Develop and implement backend logic to store parsed exam schedules." --milestone "$MILESTONE_9" --label "backend" --body ""
gh issue create --title "9.1.1.2.14. Sub-task: Develop test case files for storing parsed exam schedules." --milestone "$MILESTONE_9" --label "backend,testing" --body ""
gh issue create --title "9.1.1.2.15. Sub-task: Perform testing activities for storing parsed exam schedules." --milestone "$MILESTONE_9" --label "testing" --body ""
# Target 9.1.2: Exam Syllabus Entry
gh issue create --title "9.1.2. Target 9.1.2: Exam Syllabus Entry" --milestone "$MILESTONE_9" --label "frontend,backend" --body "This target focuses on allowing users to enter and manage their exam syllabi."
# Task 9.1.2.1: Implement Exam Syllabus Input
gh issue create --title "9.1.2.1. Task 9.1.2.1: Implement Exam Syllabus Input" --milestone "$MILESTONE_9" --label "frontend,backend" --body "Implement the UI and backend logic for entering exam syllabus details."
# Sub-tasks for 9.1.2.1
gh issue create --title "9.1.2.1.1. Sub-task: Design, develop, and implement UI for entering exam syllabus." --milestone "$MILESTONE_9" --label "frontend" --body ""
gh issue create --title "9.1.2.1.2. Sub-task: Develop test case files for the exam syllabus UI." --milestone "$MILESTONE_9" --label "frontend,testing" --body ""
gh issue create --title "9.1.2.1.3. Sub-task: Perform testing activities for the exam syllabus UI." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.1.2.1.4. Sub-task: Develop and implement logic to store exam syllabus information." --milestone "$MILESTONE_9" --label "backend" --body ""
gh issue create --title "9.1.2.1.5. Sub-task: Develop test case files for the syllabus storage logic." --milestone "$MILESTONE_9" --label "backend,testing" --body ""
gh issue create --title "9.1.2.1.6. Sub-task: Perform testing activities for the syllabus storage logic." --milestone "$MILESTONE_9" --label "testing" --body ""

# Phase 9.2: Timetable Adjustment based on Exams
gh issue create --title "9.2. Phase 9.2: Timetable Adjustment based on Exams" --milestone "$MILESTONE_9" --label "project management" --body "This phase involves updating the AI to dynamically adjust the timetable based on upcoming exams and syllabus information."
# Target 9.2.1: AI-Powered Exam-Centric Timetable Generation
gh issue create --title "9.2.1. Target 9.2.1: AI-Powered Exam-Centric Timetable Generation" --milestone "$MILESTONE_9" --label "backend,ai" --body "This target involves modifying the AI timetable generation algorithm to prioritize exam-related study."
# Task 9.2.1.1: Update AI Timetable Generation for Exam Schedules
gh issue create --title "9.2.1.1. Task 9.2.1.1: Update AI Timetable Generation for Exam Schedules" --milestone "$MILESTONE_9" --label "backend,ai" --body "Modify the AI to integrate exam schedules and syllabi to create a more effective study plan."
# Sub-tasks for 9.2.1.1
gh issue create --title "9.2.1.1.1. Sub-task: Develop and implement logic to incorporate exam syllabus and time till exam into AI timetable logic." --milestone "$MILESTONE_9" --label "backend,ai" --body ""
gh issue create --title "9.2.1.1.2. Sub-task: Develop test case files for the exam-centric AI logic." --milestone "$MILESTONE_9" --label "backend,ai,testing" --body ""
gh issue create --title "9.2.1.1.3. Sub-task: Perform testing activities for the exam-centric AI logic." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.2.1.1.4. Sub-task: Develop and implement logic to prioritize exam-related study and revision in the timetable." --milestone "$MILESTONE_9" --label "backend,ai" --body ""
gh issue create --title "9.2.1.1.5. Sub-task: Develop test case files for the prioritization logic." --milestone "$MILESTONE_9" --label "backend,ai,testing" --body ""
gh issue create --title "9.2.1.1.6. Sub-task: Perform testing activities for the prioritization logic." --milestone "$MILESTONE_9" --label "testing" --body ""
gh issue create --title "9.2.1.1.7. Sub-task: Develop and implement logic for dynamic changes to the timetable based on exam proximity." --milestone "$MILESTONE_9" --label "backend,ai" --body ""
gh issue create --title "9.2.1.1.8. Sub-task: Develop test case files for the dynamic adjustment logic." --milestone "$MILESTONE_9" --label "backend,ai,testing" --body ""
gh issue create --title "9.2.1.1.9. Sub-task: Perform testing activities for the dynamic adjustment logic." --milestone "$MILESTONE_9" --label "testing" --body ""

# --- Create Issues and link them to Milestones ---

# Define Milestone variables for consistent linking
MILESTONE_10="10. Milestone 10: Study Progress Tracking and Motivation"
MILESTONE_11="11. Milestone 11: Application Enhancements and Final Touches"
MILESTONE_12="12. Milestone 12: Initial Deployment and Quality Assurance"


echo "Creating Issues for Milestone 10..."
# Phase 10.1: Lesson Progress Tracking
gh issue create --title "10.1. Phase 10.1: Lesson Progress Tracking" --milestone "$MILESTONE_10" --label "project management" --body "This phase focuses on developing the system to track lessons taught and student study progress."

# Target 10.1.1: Current Study Status Management
gh issue create --title "10.1.1. Target 10.1.1: Current Study Status Management" --milestone "$MILESTONE_10" --label "project management" --body "This target involves creating the functionality for both teachers/students and students to manage their study status."

# Task 10.1.1.1: Implement Tracking for Lessons Taught
gh issue create --title "10.1.1.1. Task 10.1.1.1: Implement Tracking for Lessons Taught" --milestone "$MILESTONE_10" --label "frontend,backend" --body "Implement the UI and backend logic to allow teachers or students to enter lessons being taught."

# Sub-tasks for 10.1.1.1
gh issue create --title "10.1.1.1.1. Sub-task: Design, develop, and implement UI for teachers/students to enter lessons being taught." --milestone "$MILESTONE_10" --label "frontend" --body ""
gh issue create --title "10.1.1.1.2. Sub-task: Develop test case files for the 'lessons taught' UI." --milestone "$MILESTONE_10" --label "frontend,testing" --body ""
gh issue create --title "10.1.1.1.3. Sub-task: Perform testing activities for the 'lessons taught' UI." --milestone "$MILESTONE_10" --label "testing" --body ""
gh issue create --title "10.1.1.1.4. Sub-task: Develop and implement backend logic to track lessons_taught status." --milestone "$MILESTONE_10" --label "backend" --body ""
gh issue create --title "10.1.1.1.5. Sub-task: Develop test case files for the lessons_taught status logic." --milestone "$MILESTONE_10" --label "backend,testing" --body ""
gh issue create --title "10.1.1.1.6. Sub-task: Perform testing activities for the lessons_taught status logic." --milestone "$MILESTONE_10" --label "testing" --body ""

# Task 10.1.1.2: Implement Tracking for Student Study Status
gh issue create --title "10.1.1.2. Task 10.1.1.2: Implement Tracking for Student Study Status" --milestone "$MILESTONE_10" --label "frontend,backend" --body "Implement the UI and backend logic for students to update their individual study status."

# Sub-tasks for 10.1.1.2
gh issue create --title "10.1.1.2.1. Sub-task: Design, develop, and implement UI for students to update their study status." --milestone "$MILESTONE_10" --label "frontend" --body ""
gh issue create --title "10.1.1.2.2. Sub-task: Develop test case files for the study status UI." --milestone "$MILESTONE_10" --label "frontend,testing" --body ""
gh issue create --title "10.1.1.2.3. Sub-task: Perform testing activities for the study status UI." --milestone "$MILESTONE_10" --label "testing" --body ""
gh issue create --title "10.1.1.2.4. Sub-task: Develop and implement backend logic to update study_status for each lesson." --milestone "$MILESTONE_10" --label "backend" --body ""
gh issue create --title "10.1.1.2.5. Sub-task: Develop test case files for the study_status update logic." --milestone "$MILESTONE_10" --label "backend,testing" --body ""
gh issue create --title "10.1.1.2.6. Sub-task: Perform testing activities for the study_status update logic." --milestone "$MILESTONE_10" --label "testing" --body ""

# Phase 10.2: Motivational Messaging
gh issue create --title "10.2. Phase 10.2: Motivational Messaging" --milestone "$MILESTONE_10" --label "project management" --body "This phase involves implementing a system to provide motivational messages to students."

# Target 10.2.1: Automated Motivational Messages
gh issue create --title "10.2.1. Target 10.2.1: Automated Motivational Messages" --milestone "$MILESTONE_10" --label "project management" --body "This target focuses on the logic and UI for displaying automated motivational messages."

# Task 10.2.1.1: Implement Motivational Message Display
gh issue create --title "10.2.1.1. Task 10.2.1.1: Implement Motivational Message Display" --milestone "$MILESTONE_10" --label "frontend,backend" --body "Create the backend system and front-end display for motivational messages."

# Sub-tasks for 10.2.1.1
gh issue create --title "10.2.1.1.1. Sub-task: Develop a system to occasionally convey motivational messages." --milestone "$MILESTONE_10" --label "backend,ai" --body ""
gh issue create --title "10.2.1.1.2. Sub-task: Develop test case files for the motivational message logic." --milestone "$MILESTONE_10" --label "backend,ai,testing" --body ""
gh issue create --title "10.2.1.1.3. Sub-task: Perform testing activities for the motivational message logic." --milestone "$MILESTONE_10" --label "testing" --body ""
gh issue create --title "10.2.1.1.4. Sub-task: Design, develop, and implement UI elements for displaying motivational messages." --milestone "$MILESTONE_10" --label "frontend" --body ""
gh issue create --title "10.2.1.1.5. Sub-task: Develop test case files for the motivational message UI." --milestone "$MILESTONE_10" --label "frontend,testing" --body ""
gh issue create --title "10.2.1.1.6. Sub-task: Perform testing activities for the motivational message UI." --milestone "$MILESTONE_10" --label "testing" --body ""

echo "Creating Issues for Milestone 11..."
# Phase 11.1: UI/UX Refinement and Branding
gh issue create --title "11.1. Phase 11.1: UI/UX Refinement and Branding" --milestone "$MILESTONE_11" --label "project management" --body "This phase focuses on the final visual enhancements and branding of the application."

# Target 11.1.1: Overall UI/UX Consistency
gh issue create --title "11.1.1. Target 11.1.1: Overall UI/UX Consistency" --milestone "$MILESTONE_11" --label "project management" --body "This target involves ensuring all UI elements are consistent and follow the established theme."

# Task 11.1.1.1: Apply Child-Friendly, Colorful, Cartoonish UI Theme Universally
gh issue create --title "11.1.1.1. Task 11.1.1.1: Apply Child-Friendly, Colorful, Cartoonish UI Theme Universally" --milestone "$MILESTONE_11" --label "frontend" --body "Apply the chosen UI theme across the entire application for a consistent user experience."

# Sub-tasks for 11.1.1.1
gh issue create --title "11.1.1.1.1. Sub-task: Review and adjust all UI elements to align with the chosen theme." --milestone "$MILESTONE_11" --label "frontend" --body ""
gh issue create --title "11.1.1.1.2. Sub-task: Develop test case files for the theme consistency." --milestone "$MILESTONE_11" --label "frontend,testing" --body ""
gh issue create --title "11.1.1.1.3. Sub-task: Perform testing activities for the theme consistency." --milestone "$MILESTONE_11" --label "testing" --body ""
gh issue create --title "11.1.1.1.4. Sub-task: Ensure similar look and feel across iOS, Android, and web." --milestone "$MILESTONE_11" --label "frontend" --body ""
gh issue create --title "11.1.1.1.5. Sub-task: Develop test case files for cross-platform UI consistency." --milestone "$MILESTONE_11" --label "frontend,testing" --body ""
gh issue create --title "11.1.1.1.6. Sub-task: Perform testing activities for cross-platform UI consistency." --milestone "$MILESTONE_11" --label "testing" --body ""

# Task 11.1.1.2: Create and Integrate NotANerd Logo
gh issue create --title "11.1.1.2. Task 11.1.1.2: Create and Integrate NotANerd Logo" --milestone "$MILESTONE_11" --label "frontend" --body "Design and integrate the application's official logo into the user interface."

# Sub-tasks for 11.1.1.2
gh issue create --title "11.1.1.2.1. Sub-task: Design a suitable logo for \"NotANerd\"." --milestone "$MILESTONE_11" --label "frontend" --body ""
gh issue create --title "11.1.1.2.2. Sub-task: Develop test case files for logo usage." --milestone "$MILESTONE_11" --label "frontend,testing" --body ""
gh issue create --title "11.1.1.2.3. Sub-task: Perform testing activities for logo usage." --milestone "$MILESTONE_11" --label "testing" --body ""
gh issue create --title "11.1.1.2.4. Sub-task: Integrate the logo into the application's splash screen and other relevant areas." --milestone "$MILESTONE_11" --label "frontend" --body ""
gh issue create --title "11.1.1.2.5. Sub-task: Develop test case files for logo integration." --milestone "$MILESTONE_11" --label "frontend,testing" --body ""
gh issue create --title "11.1.1.2.6. Sub-task: Perform testing activities for logo integration." --milestone "$MILESTONE_11" --label "testing" --body ""


echo "Creating Issues for Milestone 12..."
# Phase 12.1: Pre-Release Testing and Optimization
gh issue create --title "12.1. Phase 12.1: Pre-Release Testing and Optimization" --milestone "$MILESTONE_12" --label "project management" --body "This phase is for the final, comprehensive testing and optimization activities before deployment."

# Target 12.1.1: Comprehensive Automated Testing
gh issue create --title "12.1.1. Target 12.1.1: Comprehensive Automated Testing" --milestone "$MILESTONE_12" --label "project management" --body "This target involves developing and executing exhaustive test cases to ensure application quality."

# Task 12.1.1.1: Develop Exhaustive Test Cases
gh issue create --title "12.1.1.1. Task 12.1.1.1: Develop Exhaustive Test Cases" --milestone "$MILESTONE_12" --label "testing" --body "Generate a complete set of test cases to cover all application functionality."

# Sub-tasks for 12.1.1.1
gh issue create --title "12.1.1.1.1. Sub-task: Generate test case files for each new functionality using AI tools." --milestone "$MILESTONE_12" --label "testing,ai" --body ""
gh issue create --title "12.1.1.1.2. Sub-task: Develop test case files for comprehensive positive, negative, boundary, and edge cases." --milestone "$MILESTONE_12" --label "testing" --body ""
gh issue create --title "12.1.1.1.3. Sub-task: Develop test case files for integrated functionality and integrity checks." --milestone "$MILESTONE_12" --label "testing" --body ""
gh issue create --title "12.1.1.1.4. Sub-task: Perform testing activities for all of the above." --milestone "$MILESTONE_12" --label "testing" --body ""

# Task 12.1.1.2: Implement Error and Exception Handling
gh issue create --title "12.1.1.2. Task 12.1.1.2: Implement Error and Exception Handling" --milestone "$MILESTONE_12" --label "backend" --body "Implement robust error and exception handling across the application to prevent crashes and ensure stability."

# Sub-tasks for 12.1.1.2
gh issue create --title "12.1.1.2.1. Sub-task: Incorporate robust error handling mechanisms in the code." --milestone "$MILESTONE_12" --label "backend" --body ""
gh issue create --title "12.1.1.2.2. Sub-task: Develop test case files for the error handling mechanisms." --milestone "$MILESTONE_12" --label "backend,testing" --body ""
gh issue create --title "12.1.1.2.3. Sub-task: Perform testing activities for the error handling mechanisms." --milestone "$MILESTONE_12" --label "testing" --body ""
gh issue create --title "12.1.1.2.4. Sub-task: Implement exception handling for invalid inputs." --milestone "$MILESTONE_12" --label "backend" --body ""
gh issue create --title "12.1.1.2.5. Sub-task: Develop test case files for the invalid input exception handling." --milestone "$MILESTONE_12" --label "backend,testing" --body ""
gh issue create --title "12.1.1.2.6. Sub-task: Perform testing activities for the invalid input exception handling." --milestone "$MILESTONE_12" --label "testing" --body ""

echo "All Milestones and Issues for 10, 11, and 12 have been created. Please check your GitHub repository."
