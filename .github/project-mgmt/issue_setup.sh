# Make sure you are in the root directory of your project
# e.g., /workspaces/NotANerd-App

# --- Create all necessary Labels first ---
echo "Creating Labels..."
gh label create 'backend' --color 'E6E6FA' --description 'Tasks related to the Python backend.'
gh label create 'frontend' --color 'ADD8E6' --description 'Tasks related to the Flutter frontend.'
gh label create 'setup' --color '006B75' --description 'Initial setup and configuration tasks.'
gh label create 'ci/cd' --color 'B60205' --description 'Tasks for Continuous Integration and Continuous Deployment.'
gh label create 'testing' --color 'FBCA04' --description 'Tasks related to writing and running tests.'
gh label create 'security' --color 'B60205' --description 'Tasks related to security and authentication.'
gh label create 'deployment' --color 'D93F0B' --description 'Tasks related to deploying the application.'
gh label create 'authentication' --color '5319E7' --description 'Tasks related to authentication and user login.'
gh label create 'documentation' --color '0075CA' --description 'Tasks for creating project documentation.'
gh label create 'project management' --color '0E8A16' --description 'Tasks related to project planning and tracking.'

# --- Create Milestones ---
echo "Creating Milestones..."
gh api --method POST /repos/:owner/:repo/milestones -f title='Milestone 1: Create and Structure the Project Repository' -f description='This phase sets the foundation for your project, ensuring a clean, organized, and professionally managed codebase.'
gh api --method POST /repos/:owner/:repo/milestones -f title='Milestone 2: Establish a CI/CD Pipeline with GitHub Actions' -f description='This phase establishes an automated workflow for building and testing your application using GitHub Actions.'
gh api --method POST /repos/:owner/:repo/milestones -f title='Milestone 3: Backend API Refinement and Deployment' -f description='This phase breaks down the backend work into manageable, documented tasks leading to deployment.'
gh api --method POST /repos/:owner/:repo/milestones -f title='Milestone 4: Minimal Viable Flutter Front-End' -f description='Once the backend is live, we can start building the front-end.'
gh api --method POST /repos/:owner/:repo/milestones -f title='Milestone 5: Maintain Project Documentation and Track Progress' -f description='This is about keeping a living record of your project and its progress.'

# --- Create Issues and link them to Milestones ---

# --- Issues for Milestone 1 ---
echo "Creating Issues for Milestone 1..."
gh issue create --title "Task 1.1: Create a GitHub Repository" --milestone "Milestone 1: Create and Structure the Project Repository" --label "backend,setup" --body "We have already completed this step. The repository has been created. The issue will be closed."
gh issue create --title "Task 1.2: Set Up the Repository Structure" --milestone "Milestone 1: Create and Structure the Project Repository" --label "backend,setup" --body "We have already completed this step. The repository structure has been created. The issue will be closed."
gh issue create --title "Task 1.3: Implement Configuration Control" --milestone "Milestone 1: Create and Structure the Project Repository" --label "backend,setup" --body "We have already completed this step. The .gitignore files have been created. The issue will be closed."
gh issue create --title "Task 1.4: Set up GitHub Issue Tracking Automation" --milestone "Milestone 1: Create and Structure the Project Repository" --label "setup,project management" --body "Create shell scripts and commands to automatically set up the milestone and issue framework and to programmatically obtain the progress status."

# --- Issues for Milestone 2 ---
echo "Creating Issues for Milestone 2..."
gh issue create --title "Task 2.1: Implement Backend Unit Testing" --milestone "Milestone 2: Establish a CI/CD Pipeline with GitHub Actions" --label "backend,ci/cd,testing" --body "Create a tests/ directory and a simple pytest file to test a backend function."
gh issue create --title "Task 2.2: Create a Backend CI Workflow" --milestone "Milestone 2: Establish a CI/CD Pipeline with GitHub Actions" --label "backend,ci/cd" --body "Configure a GitHub Actions workflow to run tests on every push."
gh issue create --title "Task 2.3: Create a Frontend CI Workflow" --milestone "Milestone 2: Establish a CI/CD Pipeline with GitHub Actions" --label "frontend,ci/cd" --body "Configure a GitHub Actions workflow for Flutter to check formatting, linting, and run tests."

# --- Issues for Milestone 3 ---
echo "Creating Issues for Milestone 3..."
gh issue create --title "Task 3.1: Add Firebase Auth Verification to Backend" --milestone "Milestone 3: Backend API Refinement and Deployment" --label "backend,security" --body "Update requirements.txt, create a verification decorator, and apply it to protected endpoints."
gh issue create --title "Task 3.2: Manually Deploy the Backend to Google Cloud Functions" --milestone "Milestone 3: Backend API Refinement and Deployment" --label "backend,deployment" --body "Deploy the backend to Google Cloud Functions, set environment variables, and test the public URL."
gh issue create --title "Task 3.3: Set Up Automated Backend Deployment" --milestone "Milestone 3: Backend API Refinement and Deployment" --label "backend,ci/cd,deployment" --body "Create a GitHub Actions workflow to automatically deploy the backend to Google Cloud Functions on a merge to the main branch."

# Sub-task 3.1.1: Update Dependencies
gh issue create --title "Sub-task 3.1.1: Add firebase-admin to dependencies" --milestone "Milestone 3: Backend API Refinement and Deployment" --label "backend,security" --body "Update the requirements.txt file to include the 'firebase-admin' library."

# Sub-task 3.1.2: Create a Firebase Auth verification decorator
gh issue create --title "Sub-task 3.1.2: Create a Firebase Auth verification decorator" --milestone "Milestone 3: Backend API Refinement and Deployment" --label "backend,security,authentication" --body "Create a Python decorator that takes a Firebase ID token from the request header, verifies it, and attaches the user's ID to the request."

# Sub-task 3.1.3: Apply auth decorator to protected endpoints
gh issue create --title "Sub-task 3.1.3: Apply auth decorator to protected endpoints" --milestone "Milestone 3: Backend API Refinement and Deployment" --label "backend,security,authentication" --body "Apply the newly created authentication decorator to any backend API endpoints that require user authentication, such as user profile and timetable creation routes."

# New sub-task for creating a Google Cloud Project
# Set the milestone name and labels for consistency
MILESTONE="Milestone 3: Backend API Refinement and Deployment"
LABELS_SETUP="deployment,setup"
LABELS_SECURITY="deployment,backend,security"
LABELS_BACKEND="deployment,backend"
LABELS_TESTING="deployment,testing"

# Sub-task 3.2.1: Create a Google Cloud Project
gh issue create \
  --title "Sub-task 3.2.1: Create a Google Cloud Project" \
  --milestone "$MILESTONE" \
  --label "$LABELS_SETUP" \
  --body "Create a new, dedicated Google Cloud Project for the NotANerd application and obtain its unique Project ID."

# Sub-task 3.2.2: Install gcloud CLI and Authenticate
gh issue create \
  --title "Sub-task 3.2.2: Install gcloud CLI and Authenticate" \
  --milestone "$MILESTONE" \
  --label "$LABELS_SETUP" \
  --body "Install the Google Cloud SDK and authenticate your local environment with your Google Cloud account. This is a prerequisite for all subsequent deployment steps."

# Sub-task 3.2.3: Download the Firebase service account key
gh issue create \
  --title "Sub-task 3.2.3: Download the Firebase service account key" \
  --milestone "$MILESTONE" \
  --label "$LABELS_SECURITY" \
  --body "Download the service account JSON key from your Firebase project settings. This key is necessary for the backend to securely access Firebase services."

# Sub-task 3.2.4: Update auth.py with the service account key path
gh issue create \
  --title "Sub-task 3.2.4: Update auth.py with the service account key path" \
  --milestone "$MILESTONE" \
  --label "$LABELS_SECURITY" \
  --body "Modify the auth.py file to correctly reference the downloaded service account JSON key."

# Sub-task 3.2.5: Deploy the Cloud Function to Google Cloud
gh issue create \
  --title "Sub-task 3.2.5: Deploy the Cloud Function to Google Cloud" \
  --milestone "$MILESTONE" \
  --label "$LABELS_BACKEND" \
  --body "Use the 'gcloud functions deploy' command to deploy the backend code to Google Cloud Functions. This step includes setting necessary environment variables."

# Sub-task 3.2.6: Test the public URL to ensure the function is accessible
gh issue create \
  --title "Sub-task 3.2.6: Test the public URL" \
  --milestone "$MILESTONE" \
  --label "$LABELS_TESTING" \
  --body "After deployment, verify that the function is live and accessible by testing its public URL. This ensures the deployment was successful and the function is responding as expected."

# --- Issues for Milestone 4 ---
echo "Creating Issues for Milestone 4..."
gh issue create --title "Task 4.1: Set up the Flutter Project" --milestone "Milestone 4: Minimal Viable Flutter Front-End" --label "frontend,setup" --body "Use the Flutter CLI to create a new project in the /frontend directory."
gh issue create --title "Task 4.2: Integrate Firebase SDK" --milestone "Milestone 4: Minimal Viable Flutter Front-End" --label "frontend,setup,authentication" --body "Add Firebase SDK dependencies and configure Firebase for the Flutter project."

# --- Issues for Milestone 5 ---
echo "Creating Issues for Milestone 5..."
gh issue create --title "Task 5.1: Create Project Documentation" --milestone "Milestone 5: Maintain Project Documentation and Track Progress" --label "documentation" --body "Create a /docs directory and add the project blueprint and initial API documentation."
gh issue create --title "Task 5.2: Set Up GitHub Issues for Task Tracking" --milestone "Milestone 5: Maintain Project Documentation and Track Progress" --label "setup,project management" --body "Create GitHub Issues for all tasks and sub-tasks to track progress."

MILESTONE3="Milestone 3: Backend API Refinement and Deployment"
MILESTONE4="Milestone 4: Minimal Viable Flutter Front-End"
MILESTONE5="Milestone 5: Maintain Project Documentation and Track Progress"
LABELS_CI_CD="ci/cd"
LABELS_BACKEND="backend,deployment"
LABELS_FRONTEND="frontend"
LABELS_SETUP="setup"
LABELS_DOCS="documentation"

echo "Creating correct subtasks for Milestone 3, Task 3.3..."
# Sub-task 3.3.1: Create the GitHub Actions workflow file
gh issue create \
  --title "Sub-task 3.3.1: Create a GitHub Actions workflow file" \
  --milestone "$MILESTONE3" \
  --label "$LABELS_CI_CD,$LABELS_BACKEND" \
  --body "Create the YAML workflow file at .github/workflows/deploy-backend.yml to handle automated deployment."

# Sub-task 3.3.2: Configure the workflow trigger
gh issue create \
  --title "Sub-task 3.3.2: Configure the workflow to trigger on a merge to the main branch" \
  --milestone "$MILESTONE3" \
  --label "$LABELS_CI_CD" \
  --body "Add the 'on: push: branches: [main]' configuration to the workflow to trigger on merges to the main branch."

# Sub-task 3.3.3: Use GitHub Secrets for credentials
gh issue create \
  --title "Sub-task 3.3.3: Use GitHub Secrets to securely store your Google Cloud credentials" \
  --milestone "$MILESTONE3" \
  --label "$LABELS_CI_CD,security" \
  --body "Create a new repository secret to store the Google Cloud service account key for the deployment workflow."

# Sub-task 3.3.4: Deploy the backend to Google Cloud Functions
gh issue create \
  --title "Sub-task 3.3.4: The workflow should build and deploy the Python backend to Google Cloud Functions" \
  --milestone "$MILESTONE3" \
  --label "$LABELS_CI_CD,$LABELS_BACKEND" \
  --body "Implement the steps in the workflow to build the Python dependencies and deploy the cloud function using gcloud CLI."


echo "Creating subtasks for Milestone 4..."
# Sub-task 4.1.1: Use the Flutter CLI to create a new project
gh issue create \
  --title "Sub-task 4.1.1: Use the Flutter CLI to create a new project in the /frontend directory" \
  --milestone "$MILESTONE4" \
  --label "$LABELS_FRONTEND,$LABELS_SETUP" \
  --body "Run 'flutter create .' inside the /frontend directory to initialize the Flutter project."

# Sub-task 4.1.2: Run the project in a web browser
gh issue create \
  --title "Sub-task 4.1.2: Open the project and run it in a web browser to confirm it works" \
  --milestone "$MILESTONE4" \
  --label "$LABELS_FRONTEND,$LABELS_SETUP" \
  --body "After creating the project, run it to ensure there are no setup errors."

# Sub-task 4.2.1: Add Firebase dependencies to pubspec.yaml
gh issue create \
  --title "Sub-task 4.2.1: Add the firebase_core, firebase_auth, and cloud_firestore dependencies" \
  --milestone "$MILESTONE4" \
  --label "$LABELS_FRONTEND,$LABELS_SETUP" \
  --body "Edit the pubspec.yaml file to include the necessary Firebase packages for Flutter."

# Sub-task 4.2.2: Configure Firebase for multiple platforms
gh issue create \
  --title "Sub-task 4.2.2: Configure Firebase for your Flutter web, iOS, and Android projects" \
  --milestone "$MILESTONE4" \
  --label "$LABELS_FRONTEND,$LABELS_SETUP" \
  --body "Run the flutterfire CLI commands to configure Firebase for all target platforms."


echo "Creating subtasks for Milestone 5..."
# Sub-task 5.1.1: Save the blueprint as project_blueprint.md
gh issue create \
  --title "Sub-task 5.1.1: Save this detailed project blueprint as docs/project_blueprint.md" \
  --milestone "$MILESTONE5" \
  --label "$LABELS_DOCS" \
  --body "Move the project blueprint document into the /docs directory of the repository."

# Sub-task 5.1.2: Generate initial API documentation
gh issue create \
  --title "Sub-task 5.1.2: Use an AI-powered tool to generate initial API documentation" \
  --milestone "$MILESTONE5" \
  --label "$LABELS_DOCS" \
  --body "Generate API documentation from the Python backend code and save it as docs/api_docs.md."



echo "All Milestones and Issues have been created. Please check your GitHub repository."