#!/bin/bash

# --- GitHub Project Status Script ---
# This script provides a summary of all milestones and issues in your GitHub repository.
# It requires the GitHub CLI (`gh`) and `jq` to be installed.

# -----------------------------------------------------------------------------
# Prerequisites check
# -----------------------------------------------------------------------------

# Check if the GitHub CLI (`gh`) is installed
if ! command -v gh &> /dev/null
then
    echo "Error: GitHub CLI (gh) could not be found."
    echo "Please install it from https://cli.github.com/ and try again."
    exit 1
fi

# Check if `jq` is installed
if ! command -v jq &> /dev/null
then
    echo "Error: jq could not be found."
    echo "Please install it with 'sudo apt-get install jq' or 'brew install jq' and try again."
    exit 1
fi

# Check if the user is logged in to the GitHub CLI
if ! gh auth status &> /dev/null
then
    echo "Error: You are not logged in to the GitHub CLI."
    echo "Please run 'gh auth login' to authenticate."
    exit 1
fi

# Get the repository owner and name from the current directory
REPO=$(gh repo view --json owner,name -q '.owner.login + "/" + .name')
if [ -z "$REPO" ]; then
    echo "Error: Could not determine the repository from the current directory."
    echo "Please run this script from inside a git repository."
    exit 1
fi

echo "--- Project Status for $REPO ---"
echo ""

# -----------------------------------------------------------------------------
# Milestone Status Summary
# -----------------------------------------------------------------------------

echo "## Milestone Progress"
echo ""

# Fetch all milestones and iterate over them
gh api --jq '.[] | [.title, .open_issues, .closed_issues]' "/repos/$REPO/milestones" | while read -r line
do
    # Parse the JSON array for milestone title, open issues, and closed issues
    title=$(echo "$line" | jq -r '.[0]')
    open_issues=$(echo "$line" | jq -r '.[1]')
    closed_issues=$(echo "$line" | jq -r '.[2]')
    total_issues=$((open_issues + closed_issues))

    # Calculate the completion percentage
    if [ "$total_issues" -gt 0 ]; then
        percentage=$((closed_issues * 100 / total_issues))
    else
        percentage=0
    fi

    # Print a formatted progress bar
    # The progress bar is a simple visual representation
    # This loop builds a string of '=' characters for the filled part
    filled_bar_length=$((percentage / 5))
    empty_bar_length=$((20 - filled_bar_length))
    filled_bar=$(printf '=%.0s' $(seq 1 $filled_bar_length))
    empty_bar=$(printf ' %.0s' $(seq 1 $empty_bar_length))

    echo "### $title"
    echo "Progress: [$filled_bar$empty_bar] $percentage% ($closed_issues/$total_issues issues closed)"
    echo ""
done

echo "----------------------------------------------------"

# -----------------------------------------------------------------------------
# Issues Status Summary
# -----------------------------------------------------------------------------

echo "## Issue Summary"
echo ""

# Get the total number of open and closed issues
total_open=$(gh issue list --state 'open' --json title -q '. | length')
total_closed=$(gh issue list --state 'closed' --json title -q '. | length')
echo "Total Open Issues: $total_open"
echo "Total Closed Issues: $total_closed"
echo ""

# Fetch and list open issues grouped by milestone
echo "### Open Issues"
echo ""
gh issue list --state 'open' --json title,milestone,number --limit 100 -q '.[] | "\(.milestone.title // "No Milestone"):\n  - #\(.number): \(.title)\n"' | sort -k1 | uniq
echo ""

# Fetch and list closed issues grouped by milestone
echo "### Closed Issues"
echo ""
gh issue list --state 'closed' --json title,milestone,number --limit 100 -q '.[] | "\(.milestone.title // "No Milestone"):\n  - #\(.number): \(.title)\n"' | sort -k1 | uniq
echo ""

echo "--- Script Finished ---"
