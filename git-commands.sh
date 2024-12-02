---------------------------------
Configuration
---------------------------------
# Get configuration locally (in a repo)
git config --list

# Get global config (system)
git config --list --show-origin

# Edit global configuration
git config --edit --global

# add username and email locally
git config user.name "Your Name Here"
git config user.email your@email.example
 
---------------------------------
Branches
---------------------------------
# fetch & prune changes (deleted branches will be stated that it is deleted form remote,...)
git fetch -p

# print delete branches names that are gone from remote
echo $(git branch -vv | grep ': gone]' | awk '{print $1}')

# Delete a branch from local
git branch -d $branch


# delete local branches that are gone in one shot
git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do git branch -D $branch; done

---------------------------------
Stash
---------------------------------
# Stash your changes (all of them)
git stash

# Pop your changes out (latest stash will be applied)
git stash pop


--------------------------------
Commit related commands
--------------------------------
# this will add all the changed files in my local git repo and make a new commit
git commit -am "new commit"

# change the latest committed message locally
git commit --amend -m "new commit message"

# change the latest committed files and re-commit with the same message
git add .
git commit --amend --no-edit

# Remove Files From Git Commit (latest commit) into staging area
git reset --soft HEAD~1

# Remove Files From staging area (unstage)
git reset HEAD <file>

-----------------------------------------------------------------------------
Reverting commits
-----------------------------------------------------------------------------
# create a new commit that reverts the commit by creating a new one as undo
git revert 1kjdi21j 

# Remove changes from latest commit from local
git reset --hard HEAD~1

# After removing latest commit from local, we can force the removal of the latest commit in remote (do NOT do this in master/release branches) 
git push -f origin branch_name

-----------------------------------------------------
Merging
-----------------------------------------------------
# cherry pick a merge request (-m 1) to consider the current branch as the parent to merge the code 
git cherry-pick -m 1 fd9f578




Tagging
-------------------------------------
# list all tags
git tag 

# remove local tag v1.0
git tag --delete v1.0

# remove remote tag
git push --delete origin v1.0

# Create and push a tag
TAG_VERSION=v1.6.4
git tag ${TAG_VERSION} -m ${TAG_VERSION}
git push origin ${TAG_VERSION}


Git APIs
-----------------------

curl -u $username:$git_token https://api.github.com/user/repos -d '{"name":"repo-name"}'

# create new repo for user Ziad-Aamer, with name shell-scipting
curl -u Ziad-Aamer:$git_token https://api.github.com/user/repos -d '{"name":"shell-scripting"}'


Differences
---------------------------
# show your changes vs last committed
git diff

# show the last commit changes (difference between HEAD and the commit before it)
git diff HEAD^ HEAD


Conflicts
---------------------------------
# If unable to merge to a branch because of conflicts, you rebase your commits on top of the other branch
# The below will make the pull rebase, instead of doing fast-forward
git config pull.rebase true

# Then pull from the branch you want to base your commits (from the other branch) upon
git pull origin feat/mcs-develop

#
git push -f origin branch_name
