 git log -1 --stat 
 git show -1 
 git reflog

 # short hash 
 git log --oneline
 git log --abbrev-commit

#revision 
# https://stackoverflow.com/questions/5724513/in-git-how-do-i-figure-out-what-my-current-revision-is

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


git log --name-only  # <---

# https://stackoverflow.com/questions/7203515/how-to-find-a-deleted-file-in-the-project-commit-history
#If you do not know the exact path you may use
	git log --all --full-history -- "**/thefile.*"
#If you know the path the file was at, you can do this:
	git log --all --full-history -- <path-to-file>


#How to list only the names of files that changed between two commits
git diff --name-only SHA1 SHA2
#where you only need to include enough of the SHA hash to identify the commits. You can also do, for example
git diff --name-only HEAD~10 HEAD~5


#To overwrite a file in a branch from another branch, 
#i.e, master to redesign do (when redesign is the current branch)
git checkout master ./path_to_file/default.aspx.cs




# How do I fetch a branch on someone else's fork on GitHub?
git remote add theirusername git@github.com:theirusername/reponame.git
git fetch theirusername
git checkout -b mynamefortheirbranch theirusername/theirbranch


# Auth problems in git 
# https://stackoverflow.com/questions/6565357/git-push-requires-username-and-password
git remote set-url origin git@github.com:username/repo.git


# submodule 
git submodule init
git submodele update

