# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
   A system that keeps track of changes to files and creates save points so previous versions of a project are available.  VC is helpful because multiple parties can work on the same file, at the same or different times, and do so remotely.  It also protects teams from losing changes, updates, deletions, etc. by offer the ability to retrieve an older existence of a file if a mistake has indeed been made
* What is a branch and why would you use one?
   A branch is like a staging area for working on a project.  An individual can modify the original file(s) without altering the original project.  After a person has completed their task, they can make a "save point" in their current branch to keep track of the history of changes.  Additional branches can be made as well.  This allows teams to make edits to the original project without effecting the original files.  It can also provide a way for teams to go in different directions of the project if they choose
* What is a commit? What makes a good commit message?
   A commit is a save point in a branch.  The commit provides a message as to what was updated, at what time, and by whom.  In my research, I found that the reoccurring themes to a good commit message involved: the message should be succinct and to the point, follow a constant style for the project, and be non-repetitive of the exact changes.  This will make it easier for other to quickly read and understand the message.
* What is a merge conflict?
   When git is unable to merge changes automatically.  Some examples can be when the same parts of a file are changed by two separate users or when one user removes a file on one branch and then the same file is updated on a separate branch.  Git gets confused and needs to clarify with the users on what is actually the correct updated that needs to be merged.