<style>
.box {
  display: Inline-block;  
  text-align: center;
  padding: 15px;
  background-color: #23EB9A;
  border-radius: 10px;
  align-items: Center;
  display: flex;
  justify-content: center;
  }

</style>

<svg width="100%" height="auto" viewBox="0 0 130 40" xmlns="http://www.w3.org/2000/svg"> <path d="M32.782 25.79c0 2.38-1.281 3.83-3.189 3.83-1.96 0-3.245-1.45-3.245-3.83v-8.043h-2.96v7.99c0 4.075 2.256 6.73 6.098 6.73 3.814 0 6.231-2.708 6.231-6.73v-7.99h-2.935zM41.546 12.031h-2.897v20.232h2.897zM57.64 17.763h-2.896v14.5h2.897zM70.247 17.763l-4.055 10.65-4.082-10.65h-3.09l5.682 14.5h2.953l5.681-14.5zM103.757 23.665l-1.711-.394c-1.048-.253-1.572-.815-1.572-1.574 0-1.04.965-1.685 2.261-1.657.8 0 1.601.253 2.372.647a8.7 8.7 0 0 1 2.097 1.406v-3.038c-.496-.365-2.289-1.602-4.607-1.602-3.199 0-5.13 2.137-5.13 4.496 0 2.22 1.572 3.316 3.642 3.822l1.654.393c1.463.337 2.18.872 2.18 1.884s-.856 1.967-2.428 1.967c-.993 0-1.987-.337-2.786-.788-.966-.506-1.683-1.124-1.876-1.32l-.055 3.091c.192.196 1.848 1.573 4.799 1.573 3.283 0 5.325-2.303 5.325-4.664.001-2.051-1.407-3.624-4.165-4.242M80.205 17.594c-3.916 0-6.869 3.316-6.869 7.418s3.2 7.417 7.53 7.417c3.311 0 5.13-1.602 5.13-1.602v-2.95s-2.013 1.826-4.91 1.826c-2.62 0-4.33-1.49-4.771-3.569H86.77c.028-.365.056-.759.056-1.124 0-4.1-2.815-7.416-6.621-7.416m-3.918 6.295c.359-2.08 1.739-3.597 3.917-3.597 2.151 0 3.447 1.518 3.78 3.597zM55.153 12l-1.04 1.834 1.04 1.835h2.078l1.04-1.835L57.231 12zM17.607 17.763v.003l-.004-.003-5.714 9.587-.028-9.587H8.584v.003l-.004-.003-5.692 9.552-.018-.56.028-8.992H0v14.5h2.897c.177-.31.621-1.066 1.191-2.037l4.932-8.277v10.314h2.87q0-.003.002-.005l.006.005 6.115-10.262v10.262h2.869v-14.5zM121.182 27.594l-.661.603a6.8 6.8 0 0 1-1.814 1.211c-.601.265-1.339.4-2.193.4a4.4 4.4 0 0 1-2.155-.552 4.2 4.2 0 0 1-1.607-1.563 4.26 4.26 0 0 1-.595-1.94q.934.292 1.774.492c.902.214 1.841.322 2.789.322.913 0 1.793-.153 2.613-.455.861-.316 1.574-.789 2.118-1.406.592-.67.892-1.49.892-2.43 0-.893-.26-1.71-.775-2.43-.495-.695-1.183-1.241-2.044-1.623a6.7 6.7 0 0 0-2.727-.554c-1.177 0-2.322.302-3.405.898-1.091.6-1.999 1.493-2.697 2.651-.703 1.165-1.058 2.566-1.058 4.162 0 1.431.342 2.693 1.018 3.75a6.56 6.56 0 0 0 2.64 2.388 7.5 7.5 0 0 0 3.374.79c1.105 0 2.109-.205 2.983-.61.839-.39 1.658-.94 2.434-1.637l.588-.528zm-8.709-4.253c.176-.515.428-.976.75-1.374a4.8 4.8 0 0 1 1.659-1.338 4.4 4.4 0 0 1 1.913-.454c.958 0 1.731.217 2.3.644.504.378.739.843.739 1.46 0 .354-.088.81-.771 1.209-.663.384-1.452.58-2.343.58-1.286-.002-2.711-.245-4.247-.727M49.412 13.633h-2.868v4.102h-3.652v2.557h3.652v11.942h2.868V20.292h3.67v-2.557h-3.67zM88.626 17.735h-.17v14.5h2.896V20.272h4.932v-2.557h-7.658z" fill="currentColor"/> </svg>

# Collaborating with Git & GitHub Skills Application

___

### Access and Credentials

| Item | Detail |
| :--- | :--- |
| User |+++@lab.VirtualMachine(desktop1).Username+++| 
| Password |+++@lab.VirtualMachine(desktop1).Password+++| 

___

## Challenge Tasks

### Task 1: Setting Up Remote Repository Connection
Establish a connection between your local Git repository and a remote GitHub repository to enable collaboration.

**Requirements:**
1. Create a new directory called `github-collaboration-project` in your home directory
2. Initialize a new Git repository in this directory
3. Configure Git with your name and email address
4. Create a `README.md` file with project description and setup instructions
5. Create a `.gitignore` file appropriate for a software project
6. Make an initial commit with both files
7. Add this repository as a remote origin (the URL will be provided separately)
8. Push the initial commit to the remote repository
9. Verify the connection by checking remote status
10. Document all remote setup commands in `remote-setup-log.txt`

### Task 2: Collaborative Branching Workflow
Implement a collaborative branching strategy that simulates working with a team on shared features.

**Requirements:**
1. Create a `develop` branch as the main development branch
2. Create a feature branch called `feature/user-authentication`
3. On the feature branch, create files: `auth.py`, `user.py`, and `login.html`
4. Add meaningful content to each file (simulating authentication functionality)
5. Commit your changes with clear, descriptive commit messages
6. Push the feature branch to the remote repository
7. Create another feature branch called `feature/data-processing`
8. On this branch, create files: `processor.py`, `data.json`, and `utils.py`
9. Commit and push this branch as well
10. Merge the `feature/user-authentication` branch into `develop`
11. Push the updated `develop` branch to remote
12. Document the branching workflow in `branching-strategy.txt`

### Task 3: Handling Merge Conflicts and Collaboration
Simulate and resolve merge conflicts that commonly occur in collaborative development.

**Requirements:**
1. Create a branch called `feature/config-updates` from `develop`
2. Create a `config.py` file with configuration settings
3. Commit and push this branch
4. Switch back to `develop` and create a different `config.py` file with conflicting content
5. Commit this change to `develop`
6. Attempt to merge `feature/config-updates` into `develop` (this will create a conflict)
7. Resolve the merge conflict by combining both configurations appropriately
8. Complete the merge and commit the resolution
9. Push the resolved `develop` branch to remote
10. Create a file called `conflict-resolution-log.txt` documenting the conflict and resolution process
11. Delete the merged feature branches (both locally and remotely)
12. Document the cleanup process in `branch-cleanup-log.txt`

### Task 4: Pull Requests and Code Review Simulation
Simulate a pull request workflow and code review process using Git commands.

**Requirements:**
1. Create a new branch called `feature/documentation`
2. Create a `docs` folder with the following files:
   - `API.md` - API documentation
   - `CONTRIBUTING.md` - Contribution guidelines
   - `CHANGELOG.md` - Change log
3. Add substantial content to each documentation file
4. Commit changes with well-formatted commit messages
5. Push the branch to remote
6. Create a file called `pull-request-description.txt` that simulates a PR description
7. Create a file called `code-review-checklist.txt` with items to check during code review
8. Simulate addressing review feedback by making additional commits
9. Merge the documentation branch into `develop`
10. Push the updated `develop` branch
11. Document the entire PR workflow in `pr-workflow-guide.txt`

### Task 5: Advanced Git Collaboration Techniques
Demonstrate advanced Git techniques used in professional collaborative environments.

**Requirements:**
1. Create a `release/v1.0.0` branch from `develop`
2. Create a `VERSION.txt` file with version information
3. Create a `RELEASE_NOTES.md` file documenting features and changes
4. Use `git tag` to create an annotated tag for the release
5. Push the tag to the remote repository
6. Create a hotfix branch called `hotfix/critical-security-fix`
7. Make a critical fix (create/modify a security-related file)
8. Merge the hotfix into both `develop` and `release/v1.0.0`
9. Create a new tag `v1.0.1` for the hotfix
10. Push all changes and tags to remote
11. Use `git rebase` to clean up commit history on a new feature branch
12. Demonstrate `git stash` for temporarily saving work
13. Create a comprehensive `git-collaboration-guide.txt` that documents:
    - Remote repository workflows
    - Branching strategies for teams
    - Merge vs rebase strategies
    - Tag management
    - Best practices for collaborative development
14. Ensure all work is properly committed and pushed to remote

@lab.Activity(CFU2) 