# Intro to Git
This lab is intended to give you a basic overview of Git. Learning how to use Git will help you work and delegate with your team efficiently. If you are already familiar with Git, feel free to start with the exercises and use the reference as you find it necessary. If this is your first time using git, we recommend that you at least skim through the reference before you start on the exercises. This way you will have a good idea of where things are going into the exercises. 

If you wished for more basic, step by step introduction to Git to bring you up to speed, there are plenty of tutorials online as text or as Youtube videos. Your responsibility is to make sure that you understand what you can do with any of the operations you will be performing. All of these operations will becoming relevant soon and mastering them now will save you a lot of time and energy in the near future. That being said, the following are some more thorough tutorials. 

a. [Git Tutorial for Beginners](https://www.youtube.com/watch?v=HVsySz-h9r4)   
b. [Learn Enough Git to Be Dangerous](https://www.learnenough.com/git-tutorial/getting_started) 

Although you're encouraged to collaborate with others if you are stuck, the lab should be completed individually so you can get practice with skills that will be essential later on in the course when you are in teams. If you have questions, please post on [Piazza](https://piazza.com/class/jrql7urlkqn189).

## Submission

### Gradescope
In order to get credit for this assignment, you will submit a zip file containing your repository (```rss_lab1.zip```) to [Gradescope](https://gradescope.com/) under lab1b_exercises_git. Please **do not download** from [github.mit.edu](github.mit.edu) as a zip, **zip a local clone** instead.   
         
This lab is due on **Wednesday, February 20th at 1:00PM EST**.

## References
The following are selected chapters from [Pro Git](https://git-scm.com/book/en/v2), feel free to read the entire manual. Also visit [Git command reference](https://git-scm.com/docs) to get help with commands and command syntax.
1. [Getting Help](https://git-scm.com/book/en/v2/Getting-Started-Getting-Help)
2. [Getting a Git Repository](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
3. [Recording Changes to the Repository](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository)
4. [Viewing the Commit History](https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History) 
5. [Undoing Things](https://git-scm.com/book/en/v2/Git-Basics-Undoing-Things)
6. [Working with Remotes](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)
7. [Branches in a Nutshell](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell) 
8. [Basic Branching and Merging](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)
9. [Branch Management](https://git-scm.com/book/en/v2/Git-Branching-Branch-Management) 
10. [Branching Workflows](https://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)
11. [Remote Branches](https://git-scm.com/book/en/v2/Git-Branching-Remote-Branches)
12. [Stashing and Cleaning](https://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning)

## Git Exercises
### Sign up for MIT GitHub

Visit [github.mit.edu](https://github.mit.edu/) to create an MIT Github Account. **This is different from a normal github account. They are not linked.**

### Configure Git Locally

Run the following commands to configure git

    git config --global user.name <YOUR NAME>
    git config --global user.email <YOUR EMAIL ADDRESS>
	
Github will use that username and email to identify your contributions (git commits).

### Generate your SSH Keys
Follow the steps to enable your computer to interact with your github account via the Secure Shell. 
1. Follow the [instructions](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) to generate your SSH key and add it to the ```ssh-agent```. Make sure to remember your passphrase if you have entered one. We recommend that you skip the passphrase (just hit enter). 
2. Follow the [instructions](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/) to add your SSH key to your Github account.

### Create a repository 
Follow these steps to create a new repository, and push your Linux exercise solution using the terminal. We expect everyone to complete this section - it should take you no time if you’re already familiar with git. 
1. Follow the [instructions](https://help.github.com/articles/create-a-repo/) to create your first repository on [github.mit.edu](github.mit.edu) and call it **```rss_lab1```**.  
2. Click the "Clone or download" on your repository's page and copy the **SSH link (not HTTPS)**. It should have the form ```git@github.mit.edu:USERNAME/rss_lab1.git```. Then clone that URL to your computer with the ```git clone``` command.
3. Put your completed Linux exercise command template file in your cloned repository. 
4. Push the file to the remote using the terminal. You may follow these [instructions](https://help.github.com/articles/adding-a-file-to-a-repository-using-the-command-line/#platform-linux) if you need guidance. 

## Problem 1: Commit and push files
1. Clone the **```intro_to_git```** repository

```
git clone https://github.com/mit-rss/intro_to_git.git
```
    
2. Copy the files (```random_file.sh```, ```checks.sh```, ```random_file_generator.py```, and ```dream_within_a_dream.txt```) into your local copy of **```rss_lab1```**. Add, commit and push these files to the remote [github.mit.edu](github.mit.edu) repo using the terminal.
3. Write your commit history to a file called ```history.txt``` using the terminal (hint: Use redirections from the Linux terminal section and **```git log```**).
4. Add commit and push ```history.txt``` to the remote **```rss_lab1```**.

## Problem 2: Conflicts and conflict resolution 
In this class, you will frequently run into conflicts since you'll be working with a team in a short span of time. In this section, we will train you to handle some of the tricky situations you can get into using Git. In each exercise you will run into a problem, we will try to help you understand what the problem is, and then suggest places and commands to look into for a solution. Your task is to use the clues to fix the problem and help yourself proceed to the next exercise.

### Playing with commits
1. Run:
```
bash random_file.sh
```
2. Cache your remote (hint: **```git fetch```**).
3. Stage ```random.txt``` for commit (don’t commit yet) 
4. Run

```
git diff origin/master
```

and write the output to a file called ```diff.txt```.

5. Stage ```diff.txt``` for a commit 
6. Commit your changes and try pushing. Git should reject your push and the problem is that the remote repository has changes that are not present in the local. If you carefully read the displayed message, you should see about the same thing. Try the following three solutions.

### Stash and pull
One of the approaches to this problem is by stashing then pulling as discussed in the reference. In this section, we ask you to use that method to solve the above problem. Complete the following steps to do this.
1. Perform a command that "undoes" the commit, as if you had never ran it in the first place. I.e. the commit message is not in the history and the changed files are staged. (Hint: involves ```git reset```)
2. Stash your changes. 
3. Pull the remote.
4. Pop the stash and inspect the resulting ```random.txt``` file.
5. Resolve the conflict by keeping both changes on the file (remove the conflict markers).
6. Push ```random.txt``` and ```diff.txt```.
Now take a look your commit history (commit log), and compare it to the log file from the setup. There should be an extra commit with message “The bot is committing random changes …”.

### Merge
Another solution to try is to merge the two branches using git merge, as discussed in the reference. Again, complete the following steps.
1. Repeat the steps 1-6 from "Playing with commits" above.
2. Merge the changes using ```git merge```
3. Again, resolve the conflict by keeping your changes only this time. You may use ```diff.txt``` to help separate the changes.  
4. Push your changes.

### Rebase
As discussed in the reference, another way of merging changes is by rebase, which we will practice with this section. Complete the following steps. 
1. Again, Repeat steps 1-6 from following with commits.
2. This time, use ```git rebase``` to solve the problem.
3. Again, resolve the conflict by keeping the remote changes only this time.
Make sure that you understand the difference between merge and rebase.

## Problem 3: Branching
The reference discusses the philosophy behind branching and a couple of branching commands. In this section, we ask you practice branching by completing the following two exercises. 

### Branch and merge
This section concerns with branching and merging. We ask you create a branch, perform a commit and finally merge back to master.
1. Create a new branch based on master and call it whatever you want.
2. Switch to the new branch and make sure that you’re in that branch
3. Push your branch to the remote (your branch should appear on the remote list).
4. Run

```
python random_file_generator.py --file random2.txt
```

5. Push ```random2.txt``` 
Merge your branch back to master. (hint: **```git merge```**)

### Branch and rebase
1. Repeat steps 1-5 with the text file name is ```random3.txt``` in this case. 
2. Rebase your branch on master 

**NOTE**: Do not undo any of the commits performed so far!
