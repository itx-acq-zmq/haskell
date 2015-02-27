1. What git command creates a bare repository named `itx-acq-mspc`
   inside 20.37.49.28://app/test on ITx-acq VPCx? Assume you can
   access 20.37.49.28 and the pathway /app/test.
      
   

2. If you are currently inside a local sandbox [working directory]
   which was cloned from a remote git repository then how can you
   check the working tree status? Hint: What is the git command.
   
   
3. What git command sets the global configuration setting for user
   name associated with your VPCx logon account?
   
   
4. What git command will show you the log entries from the commit
   history for the file itx-acq-zmq.c?
   
   
5. What are the three git commands are used to promote a file from
   your local working directory to the INDEX [staging] and finally
   to the HEAD [latest commit]. Hint: We are still local! Please
   issue the commands in the correct order for the file itx-acq-zmq.c
   using a message "Feature added." for the snapshot to version
   history step.
   
   
6. [True or False] You can go inside any directory and make it a
   git repo?
   
   
   If True, then what directory is created during the git init step
   that now allows tracking of changes inside the new repo going
   forwards?
   
   
   What flag in the git init step allows you to share your new git
   repo with all user accounts accessing the server?
   
   
7. [True or False] Any GitHub account can be managed using just git.
   That is GitHub is a web front-end with its own API for managing a
   repo using the browser.
 
 
8. What is the git command to upload changes in the file itx-acq-zmq.c
   to the remote repository. Assume you have successsfully completed
   the sequence of steps in Question #5 above and that you are working
   on an existing branch named `feature_stash`. You have not yet merged
   to the `master` branch.
   
   
9. You are currently working on the `feature_stash` branch and wish to
   merge that branch with the `master` branch and push to repo. List out
   the commands to accomplish this task as well as uploading the merged
   branch to the remote repo.
   
   
   What git command allows you to list local differences between the
   `feature_stash`  branch and the `master` branch in your working
   directory.
   
   
   
10. Assuming both branches match locally in Question #9 and you successfully
    merged to `master` on the remote repo then what git command allows you
    to delete the `feature_stash` branch after confirming the local `master`
    [that you just pushed to repo!] matches it.
   
   
   
