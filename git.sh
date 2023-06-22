 git log -1 --stat 
 git show -1 
 git reflog

 # rename commit behind previous
 git rebase -i HEAD~commit_count
 git log --graph --oneline --all

 https://stackoverflow.com/questions/21459197/move-branch-to-another-branch


#show URL
git remote show origin


#### How do I update or sync a forked repository on GitHub?
 # Add the remote, call it "upstream":

git remote add upstream https://github.com/whoever/whatever.git

# Fetch all the branches of that remote into remote-tracking branches

git fetch upstream

# Make sure that you're on your master branch:

git checkout master

# Rewrite your master branch so that any commits of yours that
# aren't already in upstream/master are replayed on top of that
# other branch:

git rebase upstream/master

#f you've rebased your branch onto upstream/master you may need to force the push in order to push it to your own forked repository on GitHub. You'd do that with:

git push -f origin master





#How to list only the names of files that changed between two commits
git diff --name-only SHA1 SHA2
#where you only need to include enough of the SHA hash to identify the commits. You can also do, for example
git diff --name-only HEAD~10 HEAD~5


#To overwrite a file in a branch from another branch, 
#i.e, master to redesign do (when redesign is the current branch)
git checkout master ./path_to_file/default.aspx.cs
