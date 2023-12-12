1. Create a Repository:
Let's create a new repository named "my_project":

bash
Copy code
# Create a new directory
mkdir my_project

# Navigate into the directory
cd my_project

# Initialize a Git repository
git init

# Create a new file
echo "Hello, Git!" > README.md

# Add the file to staging
git add README.md

# Commit the changes
git commit -m "Initial commit"
2. Create Branches:
Now let's create and switch to a new branch named "new_feature":

bash
Copy code
# Create a new branch
git branch new_feature

# Switch to the new branch
git checkout new_feature
3. Add, Commit, Push, Pull:
Add a new file, commit changes, push to the remote repository, and pull changes:

bash
Copy code
# Create and add content to a new file
echo "New feature in progress" > feature.txt

# Add changes to staging
git add .

# Commit changes
git commit -m "Added a new feature"

# Push changes to the remote repository
git push origin new_feature

# Pull changes from a remote repository
git pull origin master
4. Fork a Project, Open and Merge Pull Request:
Fork a project on GitHub.
Clone your forked repository to your local machine.
Make changes, commit them, and push to your forked repository.
Open a pull request on GitHub from your branch to the original repository.
The owner of the original repository can review your changes and merge the pull request.
5. Merge and Rebase:
Merge the "new_feature" branch into "master" and rebase branches:

bash
Copy code
# Merge branches
git checkout master
git merge new_feature

# Rebase branches
git checkout new_feature
git rebase master
6. Squashing Commits:
Interactively squash commits (for the last 3 commits):

bash
Copy code
git rebase -i HEAD~3
# An editor will open, follow instructions to squash commits
7. Delete Branches:
Delete a local and remote branch:

bash
Copy code
# Delete a local branch
git branch -d new_feature

# Delete a remote branch
git push origin --delete new_feature
8. Undo Commits:
Undo the last commit but keep changes staged:

bash
Copy code
git reset --soft HEAD~1
Undo the last commit and unstage the changes:

bash
Copy code
git reset HEAD~1
Discard changes in a file before staging:

bash
Copy code
git checkout -- file_name
These examples give a practical walkthrough of performing various Git operations. Remember, Git commands should be used carefully, especially when altering history or deleting branches as they can't always be undone easily. Always make sure to understand the consequences of the commands you're using.

User
. Squashing Commits:
Interactively squash commits (for the last 3 commits):

bash
Copy code
git rebase -i HEAD~3
# An editor will open, follow instructions to squash commits
ChatGPT
Certainly! The command git rebase -i HEAD~3 will open an interactive rebase for the last three commits in your branch. Here's a breakdown of what happens:

Open the Interactive Rebase:
Running git rebase -i HEAD~3 will open a text editor showing the last three commits on your branch. It looks something like this:

bash
Copy code
pick abc1234 Commit message 1
pick def5678 Commit message 2
pick hij9012 Commit message 3

# Rebase abcdefg onto hij9012
#
# Commands:
#  p, pick = use commit
#  r, reword = use commit, but edit the commit message
#  e, edit = use commit, but stop for amending
#  s, squash = use commit, but meld into previous commit
#  f, fixup = like "squash", but discard this commit's log message
#  x, exec = run command (the rest of the line) using shell
Squash Commits:
To squash commits interactively, change the word "pick" to "squash" (or simply "s") for the commits you want to combine into the previous one. For instance:

bash
Copy code
pick abc1234 Commit message 1
squash def5678 Commit message 2
squash hij9012 Commit message 3
This tells Git to squash commits 2 and 3 into commit 1.

Edit Commit Message (if needed):
After saving and closing the editor, Git will prompt you to edit the combined commit message. You can merge the commit messages or create a new one by editing the text.

Complete the Rebase:
Save the changes in the text editor and exit. Git will then perform the rebase, combining the specified commits into one.

Remember, rebasing and squashing commits can rewrite history. Be cautious when doing this, especially if you're working in a shared branch, as it alters the commit history and can cause conflicts for collaborators who have pulled the branch.
