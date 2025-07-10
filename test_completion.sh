#!/bin/bash

# Collaborating with Git & GitHub Skills Application Test Script
# This script verifies completion of all required Git collaboration tasks

echo "=== Collaborating with Git & GitHub Skills Application Test ==="
echo "Testing completion of challenge tasks..."
echo

# Initialize test results
TASK1_PASSED=false
TASK2_PASSED=false
TASK3_PASSED=false
TASK4_PASSED=false
TASK5_PASSED=false

# Function to check if we're in a git repository
is_git_repo() {
    git rev-parse --is-inside-work-tree >/dev/null 2>&1
}

# Test Task 1: Setting Up Remote Repository Connection
echo "Testing Task 1: Setting Up Remote Repository Connection..."
TASK1_CHECKS=0
TASK1_TOTAL=10

# Check if github-collaboration-project directory exists
if [ -d "$HOME/github-collaboration-project" ]; then
    echo "✓ github-collaboration-project directory exists"
    ((TASK1_CHECKS++))
    
    # Change to the project directory for subsequent tests
    cd "$HOME/github-collaboration-project"
    
    # Check if it's a git repository
    if is_git_repo; then
        echo "✓ Git repository initialized"
        ((TASK1_CHECKS++))
    else
        echo "✗ Not a Git repository"
    fi
    
    # Check git configuration
    if git config user.name >/dev/null 2>&1 && git config user.email >/dev/null 2>&1; then
        echo "✓ Git user configuration set"
        ((TASK1_CHECKS++))
    else
        echo "✗ Git user configuration not set"
    fi
    
    # Check for README.md
    if [ -f "README.md" ] && [ -s "README.md" ]; then
        echo "✓ README.md file exists and has content"
        ((TASK1_CHECKS++))
    else
        echo "✗ README.md file not found or empty"
    fi
    
    # Check for .gitignore
    if [ -f ".gitignore" ] && [ -s ".gitignore" ]; then
        echo "✓ .gitignore file exists and has content"
        ((TASK1_CHECKS++))
    else
        echo "✗ .gitignore file not found or empty"
    fi
    
    # Check if initial commit exists
    if git log --oneline >/dev/null 2>&1; then
        echo "✓ Initial commit exists"
        ((TASK1_CHECKS++))
    else
        echo "✗ No commits found"
    fi
    
    # Check if remote origin is configured
    if git remote -v | grep -q "origin"; then
        echo "✓ Remote origin configured"
        ((TASK1_CHECKS++))
    else
        echo "✗ Remote origin not configured"
    fi
    
    # Check if files are tracked
    if git ls-files | grep -q "README\.md" && git ls-files | grep -q "\.gitignore"; then
        echo "✓ Initial files are tracked by git"
        ((TASK1_CHECKS++))
    else
        echo "✗ Initial files not properly tracked"
    fi
    
    # Check for remote setup documentation
    if [ -f "remote-setup-log.txt" ] && [ -s "remote-setup-log.txt" ]; then
        echo "✓ Remote setup commands documented"
        ((TASK1_CHECKS++))
    else
        echo "✗ Remote setup log not found or empty"
    fi
    
    # Check if there are multiple commits (indicating progression)
    COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$COMMIT_COUNT" -gt 0 ]; then
        echo "✓ Repository has commit history"
        ((TASK1_CHECKS++))
    else
        echo "✗ No commit history found"
    fi
    
else
    echo "✗ github-collaboration-project directory not found"
fi

if [ $TASK1_CHECKS -eq $TASK1_TOTAL ]; then
    TASK1_PASSED=true
fi
echo

# Test Task 2: Collaborative Branching Workflow
echo "Testing Task 2: Collaborative Branching Workflow..."
TASK2_CHECKS=0
TASK2_TOTAL=10

if [ -d "$HOME/github-collaboration-project" ]; then
    cd "$HOME/github-collaboration-project"
    
    # Check for develop branch
    if git branch -a | grep -q "develop"; then
        echo "✓ develop branch exists"
        ((TASK2_CHECKS++))
    else
        echo "✗ develop branch not found"
    fi
    
    # Check for feature/user-authentication branch
    if git branch -a | grep -q "feature/user-authentication"; then
        echo "✓ feature/user-authentication branch exists"
        ((TASK2_CHECKS++))
    else
        echo "✗ feature/user-authentication branch not found"
    fi
    
    # Check for feature/data-processing branch
    if git branch -a | grep -q "feature/data-processing"; then
        echo "✓ feature/data-processing branch exists"
        ((TASK2_CHECKS++))
    else
        echo "✗ feature/data-processing branch not found"
    fi
    
    # Check for authentication files
    if [ -f "auth.py" ] && [ -f "user.py" ] && [ -f "login.html" ]; then
        echo "✓ Authentication files exist"
        ((TASK2_CHECKS++))
    else
        echo "✗ Authentication files not found"
    fi
    
    # Check for data processing files
    if [ -f "processor.py" ] && [ -f "data.json" ] && [ -f "utils.py" ]; then
        echo "✓ Data processing files exist"
        ((TASK2_CHECKS++))
    else
        echo "✗ Data processing files not found"
    fi
    
    # Check if files have content
    if [ -s "auth.py" ] && [ -s "user.py" ] && [ -s "login.html" ]; then
        echo "✓ Authentication files have content"
        ((TASK2_CHECKS++))
    else
        echo "✗ Some authentication files are empty"
    fi
    
    # Check if data processing files have content
    if [ -s "processor.py" ] && [ -s "data.json" ] && [ -s "utils.py" ]; then
        echo "✓ Data processing files have content"
        ((TASK2_CHECKS++))
    else
        echo "✗ Some data processing files are empty"
    fi
    
    # Check for evidence of merge (authentication features merged into develop)
    if git log --oneline | grep -i "merge\|auth" >/dev/null 2>&1; then
        echo "✓ Evidence of merge operations found"
        ((TASK2_CHECKS++))
    else
        echo "✗ No evidence of merge operations found"
    fi
    
    # Check for branching strategy documentation
    if [ -f "branching-strategy.txt" ] && [ -s "branching-strategy.txt" ]; then
        echo "✓ Branching strategy documented"
        ((TASK2_CHECKS++))
    else
        echo "✗ Branching strategy documentation not found or empty"
    fi
    
    # Check for sufficient commits (indicating active development)
    COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$COMMIT_COUNT" -ge 5 ]; then
        echo "✓ Sufficient commit history for collaborative work"
        ((TASK2_CHECKS++))
    else
        echo "✗ Expected more commits for collaborative workflow"
    fi
    
else
    echo "✗ Cannot test Task 2 - project directory not found"
fi

if [ $TASK2_CHECKS -eq $TASK2_TOTAL ]; then
    TASK2_PASSED=true
fi
echo

# Test Task 3: Handling Merge Conflicts and Collaboration
echo "Testing Task 3: Handling Merge Conflicts and Collaboration..."
TASK3_CHECKS=0
TASK3_TOTAL=8

if [ -d "$HOME/github-collaboration-project" ]; then
    cd "$HOME/github-collaboration-project"
    
    # Check for config.py file
    if [ -f "config.py" ] && [ -s "config.py" ]; then
        echo "✓ config.py file exists with content"
        ((TASK3_CHECKS++))
    else
        echo "✗ config.py file not found or empty"
    fi
    
    # Check for evidence of merge conflict resolution
    if git log --oneline | grep -i "merge\|conflict\|resolve" >/dev/null 2>&1; then
        echo "✓ Evidence of merge conflict resolution found"
        ((TASK3_CHECKS++))
    else
        echo "✗ No evidence of merge conflict resolution found"
    fi
    
    # Check for conflict resolution documentation
    if [ -f "conflict-resolution-log.txt" ] && [ -s "conflict-resolution-log.txt" ]; then
        echo "✓ Conflict resolution process documented"
        ((TASK3_CHECKS++))
    else
        echo "✗ Conflict resolution log not found or empty"
    fi
    
    # Check for branch cleanup documentation
    if [ -f "branch-cleanup-log.txt" ] && [ -s "branch-cleanup-log.txt" ]; then
        echo "✓ Branch cleanup process documented"
        ((TASK3_CHECKS++))
    else
        echo "✗ Branch cleanup log not found or empty"
    fi
    
    # Check if feature/config-updates branch was cleaned up (should not exist)
    if ! git branch -a | grep -q "feature/config-updates"; then
        echo "✓ Feature branches cleaned up properly"
        ((TASK3_CHECKS++))
    else
        echo "✗ Feature branches not cleaned up"
    fi
    
    # Check for proper merge commits
    if git log --merges --oneline | wc -l | grep -q "[1-9]"; then
        echo "✓ Merge commits found in history"
        ((TASK3_CHECKS++))
    else
        echo "✗ No merge commits found"
    fi
    
    # Check if develop branch exists and has the config changes
    if git branch -a | grep -q "develop" && git ls-files | grep -q "config\.py"; then
        echo "✓ Develop branch exists with config changes"
        ((TASK3_CHECKS++))
    else
        echo "✗ Develop branch or config changes not found"
    fi
    
    # Check for evidence of conflict resolution in git history
    if git log --grep="conflict\|resolve\|merge" --oneline | wc -l | grep -q "[1-9]"; then
        echo "✓ Conflict resolution evident in commit history"
        ((TASK3_CHECKS++))
    else
        echo "✗ No conflict resolution evident in commit history"
    fi
    
else
    echo "✗ Cannot test Task 3 - project directory not found"
fi

if [ $TASK3_CHECKS -eq $TASK3_TOTAL ]; then
    TASK3_PASSED=true
fi
echo

# Test Task 4: Pull Requests and Code Review Simulation
echo "Testing Task 4: Pull Requests and Code Review Simulation..."
TASK4_CHECKS=0
TASK4_TOTAL=8

if [ -d "$HOME/github-collaboration-project" ]; then
    cd "$HOME/github-collaboration-project"
    
    # Check for docs folder
    if [ -d "docs" ]; then
        echo "✓ docs folder exists"
        ((TASK4_CHECKS++))
    else
        echo "✗ docs folder not found"
    fi
    
    # Check for documentation files
    if [ -f "docs/API.md" ] && [ -f "docs/CONTRIBUTING.md" ] && [ -f "docs/CHANGELOG.md" ]; then
        echo "✓ Documentation files exist"
        ((TASK4_CHECKS++))
    else
        echo "✗ Documentation files not found"
    fi
    
    # Check if documentation files have content
    if [ -s "docs/API.md" ] && [ -s "docs/CONTRIBUTING.md" ] && [ -s "docs/CHANGELOG.md" ]; then
        echo "✓ Documentation files have substantial content"
        ((TASK4_CHECKS++))
    else
        echo "✗ Some documentation files are empty"
    fi
    
    # Check for pull request description
    if [ -f "pull-request-description.txt" ] && [ -s "pull-request-description.txt" ]; then
        echo "✓ Pull request description documented"
        ((TASK4_CHECKS++))
    else
        echo "✗ Pull request description not found or empty"
    fi
    
    # Check for code review checklist
    if [ -f "code-review-checklist.txt" ] && [ -s "code-review-checklist.txt" ]; then
        echo "✓ Code review checklist documented"
        ((TASK4_CHECKS++))
    else
        echo "✗ Code review checklist not found or empty"
    fi
    
    # Check for PR workflow guide
    if [ -f "pr-workflow-guide.txt" ] && [ -s "pr-workflow-guide.txt" ]; then
        echo "✓ PR workflow guide documented"
        ((TASK4_CHECKS++))
    else
        echo "✗ PR workflow guide not found or empty"
    fi
    
    # Check for evidence of documentation branch merge
    if git log --oneline | grep -i "documentation\|docs" >/dev/null 2>&1; then
        echo "✓ Evidence of documentation branch work found"
        ((TASK4_CHECKS++))
    else
        echo "✗ No evidence of documentation branch work found"
    fi
    
    # Check for multiple commits indicating review feedback addressed
    COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$COMMIT_COUNT" -ge 8 ]; then
        echo "✓ Sufficient commits indicating review feedback addressed"
        ((TASK4_CHECKS++))
    else
        echo "✗ Expected more commits indicating review process"
    fi
    
else
    echo "✗ Cannot test Task 4 - project directory not found"
fi

if [ $TASK4_CHECKS -eq $TASK4_TOTAL ]; then
    TASK4_PASSED=true
fi
echo

# Test Task 5: Advanced Git Collaboration Techniques
echo "Testing Task 5: Advanced Git Collaboration Techniques..."
TASK5_CHECKS=0
TASK5_TOTAL=12

if [ -d "$HOME/github-collaboration-project" ]; then
    cd "$HOME/github-collaboration-project"
    
    # Check for release branch
    if git branch -a | grep -q "release/v1.0.0"; then
        echo "✓ release/v1.0.0 branch exists"
        ((TASK5_CHECKS++))
    else
        echo "✗ release/v1.0.0 branch not found"
    fi
    
    # Check for VERSION.txt file
    if [ -f "VERSION.txt" ] && [ -s "VERSION.txt" ]; then
        echo "✓ VERSION.txt file exists with content"
        ((TASK5_CHECKS++))
    else
        echo "✗ VERSION.txt file not found or empty"
    fi
    
    # Check for RELEASE_NOTES.md file
    if [ -f "RELEASE_NOTES.md" ] && [ -s "RELEASE_NOTES.md" ]; then
        echo "✓ RELEASE_NOTES.md file exists with content"
        ((TASK5_CHECKS++))
    else
        echo "✗ RELEASE_NOTES.md file not found or empty"
    fi
    
    # Check for git tags
    if git tag | grep -q "v1.0.0"; then
        echo "✓ v1.0.0 tag exists"
        ((TASK5_CHECKS++))
    else
        echo "✗ v1.0.0 tag not found"
    fi
    
    # Check for hotfix tag
    if git tag | grep -q "v1.0.1"; then
        echo "✓ v1.0.1 hotfix tag exists"
        ((TASK5_CHECKS++))
    else
        echo "✗ v1.0.1 hotfix tag not found"
    fi
    
    # Check for hotfix branch evidence
    if git log --oneline | grep -i "hotfix\|security" >/dev/null 2>&1; then
        echo "✓ Evidence of hotfix work found"
        ((TASK5_CHECKS++))
    else
        echo "✗ No evidence of hotfix work found"
    fi
    
    # Check for security-related file (hotfix work)
    if ls | grep -i "security\|fix" >/dev/null 2>&1; then
        echo "✓ Security-related files found"
        ((TASK5_CHECKS++))
    else
        echo "✗ No security-related files found"
    fi
    
    # Check for multiple tags indicating release management
    TAG_COUNT=$(git tag | wc -l)
    if [ "$TAG_COUNT" -ge 2 ]; then
        echo "✓ Multiple tags indicating proper release management"
        ((TASK5_CHECKS++))
    else
        echo "✗ Expected multiple tags for release management"
    fi
    
    # Check for collaboration guide
    if [ -f "git-collaboration-guide.txt" ] && [ -s "git-collaboration-guide.txt" ]; then
        echo "✓ Git collaboration guide documented"
        ((TASK5_CHECKS++))
    else
        echo "✗ Git collaboration guide not found or empty"
    fi
    
    # Check if collaboration guide contains relevant content
    if [ -f "git-collaboration-guide.txt" ] && 
       (grep -qi "remote\|branch\|merge\|rebase\|tag" "git-collaboration-guide.txt" 2>/dev/null); then
        echo "✓ Collaboration guide contains relevant content"
        ((TASK5_CHECKS++))
    else
        echo "✗ Collaboration guide lacks relevant content"
    fi
    
    # Check for comprehensive commit history
    FINAL_COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$FINAL_COMMIT_COUNT" -ge 15 ]; then
        echo "✓ Comprehensive commit history (15+ commits)"
        ((TASK5_CHECKS++))
    else
        echo "✗ Expected more comprehensive commit history"
    fi
    
    # Check that repository is clean
    if git diff-index --quiet HEAD 2>/dev/null; then
        echo "✓ Repository is clean - all changes committed"
        ((TASK5_CHECKS++))
    else
        echo "✗ Repository has uncommitted changes"
    fi
    
else
    echo "✗ Cannot test Task 5 - project directory not found"
fi

if [ $TASK5_CHECKS -eq $TASK5_TOTAL ]; then
    TASK5_PASSED=true
fi
echo

# Final Results
echo "=== TEST RESULTS ==="
echo "Task 1 (Setting Up Remote Repository Connection): $TASK1_PASSED ($TASK1_CHECKS/$TASK1_TOTAL checks passed)"
echo "Task 2 (Collaborative Branching Workflow): $TASK2_PASSED ($TASK2_CHECKS/$TASK2_TOTAL checks passed)"
echo "Task 3 (Handling Merge Conflicts and Collaboration): $TASK3_PASSED ($TASK3_CHECKS/$TASK3_TOTAL checks passed)"
echo "Task 4 (Pull Requests and Code Review Simulation): $TASK4_PASSED ($TASK4_CHECKS/$TASK4_TOTAL checks passed)"
echo "Task 5 (Advanced Git Collaboration Techniques): $TASK5_PASSED ($TASK5_CHECKS/$TASK5_TOTAL checks passed)"
echo

# Overall result
if [ "$TASK1_PASSED" = true ] && [ "$TASK2_PASSED" = true ] && [ "$TASK3_PASSED" = true ] && [ "$TASK4_PASSED" = true ] && [ "$TASK5_PASSED" = true ]; then
    echo "OVERALL RESULT: true"
    echo "All Git collaboration tasks completed successfully!"
    exit 0
else
    echo "OVERALL RESULT: false"
    echo "Some Git collaboration tasks are incomplete. Please review the requirements."
    exit 1
fi 