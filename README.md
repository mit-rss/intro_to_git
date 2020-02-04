
| **Due Date**  | **Wednesday, February 19th at 1:00PM EST**  |
|---------------|---------------------------------------------|

# Intro to Git
This lab is intended to give you a basic overview of Git. Learning how to use Git will help you work and delegate with your team efficiently. If you are already familiar with Git, feel free to start with the exercises and use the reference as you find it necessary. If this is your first time using git, we recommend that you at least skim through the reference before you start on the exercises. This way you will have a good idea of where things are going into the exercises. 

If you wished for more basic, step by step introduction to Git to bring you up to speed, there are plenty of tutorials online as text or as Youtube videos. Your responsibility is to make sure that you understand what you can do with any of the operations you will be performing. All of these operations will become relevant soon and mastering them now will save you a lot of time and energy in the near future. The following are some useful references. 

1. [Pro Git - Free Reference](https://www.git-scm.com/book/en/v2)
2. [Git Cheatsheet](https://www.atlassian.com/dam/jcr:8132028b-024f-4b6b-953e-e68fcce0c5fa/atlassian-git-cheatsheet.pdf)
3. [Interactive Git Visualization](http://git-school.github.io/visualizing-git/)
4. [Git Tutorial for Beginners - Video](https://www.youtube.com/watch?v=HVsySz-h9r4) 
5. [Learn Git Branching - Interactive](https://www.learngitbranching.js.org)

Although you're encouraged to collaborate with others if you are stuck, the lab should be completed individually so you can get practice with skills that will be essential later on in the course when you are in teams. If you have questions, please post on [Piazza](http://piazza.com/mit/spring2020/614116405).

As with other terminal commands, you can use man pages to get information about git commands as such: to get the man page for the command `git push` you can type `man git-push` in the terminal. (Also check out `man giteveryday` and `man gittutorial`.)

## GitHub

All git-controlled projects in this class, including lab instructions and support software, will be available on GitHub, an online service for hosting git repositories. MIT has its own such hosting service (github.mit.edu), that is separate from github.com. While lab instructions may appear on github.com, you will be publishing work for this class on MIT's GitHub, so make sure you keep this difference in mind. github.mit.edu and github.com are not linked so anything you publish on one will not appear in the other.

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
Follow the steps to enable your computer to interact with your github account via the Secure Shell. Your SSH key will allow you to authenticate with MIT Github so that you can make changes.

1. Follow the [instructions](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) to generate your SSH key and add it to the ```ssh-agent```. Make sure to remember your passphrase if you have entered one. We recommend that you skip the passphrase (just hit enter). 
2. Follow the [instructions](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/) to add your SSH key to your Github account.

### Create a repository 
Follow these steps to create a new repository containing your `linux_exercise.txt` file from Lab 1A using the terminal.

1. Follow steps 1-6 in these [instructions](https://help.github.com/articles/create-a-repo/) to create a **private** repository on [github.mit.edu](https://github.mit.edu) and call it **`rss_lab1`**. **Note:** Make sure that you are selecting the **private** option in step 4.
2. After creating the repository you will be presented with a new page that list an **SSH link (not HTTPS)** under the blue "Quick Setup" section. It should have the form `git@github.mit.edu:USERNAME/rss_lab1.git`. Clone that URL to your computer with the `git clone` command. Once files have been added to the repo, you can always access this URL from the green "Clone or Download" button.
3. Afterwards, copy your completed `linux_exercise.txt` (from Lab 1A) into your cloned repository. 
4. **Add and commit your changes (which are the addition of `linux_exercise.txt`), and push them to the `origin` remote** (this is the copy of your `rss_lab1` repo hosted on MIT GitHub) using the terminal. You may follow these [instructions](https://help.github.com/articles/adding-a-file-to-a-repository-using-the-command-line/#platform-linux) if you need guidance. 

**Tip:** If you get lost along the way and would like to see a helpful summary of what the current state of your repo is, `git status` will provide that.

## Problem 1: Commit and push starter files
1. Clone the **`intro_to_git`** repository

```
git clone https://github.com/mit-rss/intro_to_git.git
```
    
2. Copy the files `simulate_conflict.sh`, `bot.sh`, `random_file_generator.py`, and `dream_within_a_dream.txt` into your local copy of **`rss_lab1`** (which you created above). 
3. **Add, commit and push these files to the remote using the terminal.**
4. Write your commit history to a file called `history.txt` using the terminal (hint: Use redirections from the Linux terminal section and **`git log`**).
5. **Add `history.txt`, commit your changes, and push.**
6. Verify that the files have been pushed by looking at the remote repo on github.mit.edu

## Problem 2: Conflicts and conflict resolution 
In this class, you will frequently run into conflicts since you'll be working with a team in a short span of time. In this section, we will train you to handle some of the tricky situations you can get into using Git. In each exercise you will run into a problem, we will try to help you understand what the problem is, and then suggest places and commands to look into for a solution. Your task is to use the clues to fix the problem and help yourself proceed to the next exercise.

### Playing with commits
1. Run:
```
bash simulate_conflict.sh
```
This will create an independent copy of your rss_lab1 repo, and generate a random file, simulating a teammate doing work. At the same time, it will generate a random file in your local copy of the repo, simulating you doing some work on the same file. However, your virtual teammate already pushed their changes to the shared MIT GitHub repo. This will create a situation where you have some work in your local repo that is different from what is present in the GitHub remote.

2. Cache your remote (hint: **`git fetch`**). This will download any changes from the GitHub remote to you local repo without attempting to merge them.   
3. Stage `random.txt` for commit (don’t commit yet) 
4. Run

```
git diff origin/master
```

and write the output to a file called `diff.txt`.

5. Stage `diff.txt` for a commit 
6. **Commit your changes and try pushing.** Git should reject your push since the remote repository has changes that are not present in the local. If you carefully read the displayed message, you should see about the same thing. Try the following two solutions.

### Stash and pull
One of the approaches to this problem is by stashing then pulling as discussed in the reference. In this section, we ask you to use that method to solve the above problem. Complete the following steps to do this.
1. Perform a command that "undoes" the commit, as if you had never ran it in the first place. I.e. the commit message is not in the history **and the changed files are staged**. (Hint: involves `git reset`)
2. Stash your changes. 
3. Pull the remote.
4. Pop the stash and inspect the resulting `random.txt` file.
5. Resolve the conflict by keeping both changes on the file (remove the conflict markers).
6. Commit the addition of `random.txt` and `diff.txt`, and **push your changes to the remote**.

Now take a look your commit history (`git log`), and compare it to the log file from the setup. There should be an extra commit with message “The bot is committing random changes...”. This entry represents the incompatible changes to `random.txt` that the bot simulating your teammate commited at the same time as you changed `random.txt`.

### Merge
Another solution to try is to merge the two branches using git merge, as discussed in the reference. Again, complete the following steps.
1. **Repeat** the steps 1-6 from **"Playing with commits"** above (_do not repeat "Stash and Pull"_).
2. Merge the changes using `git merge`
3. Again, resolve the conflict by keeping your changes only this time. You may use `diff.txt` to help separate the changes.  
4. **Add, commit and push your changes** (your resolution of the merge conflict).

Usually git merge will be the more straightforward conflict resolution approach, but the stash and pull approach can be very useful in situations where you would like to first examine and test someone else's contributions. Also keep in mind that `git pull` is equivalent to `git fetch` followed by `git merge FETCH_HEAD`, so performing a `git pull` when incompatible changes exist in your remote will automatically lead you to the situation expored in the **Merge** section above.

## Problem 3: Branching
The reference discusses the philosophy behind branching and a couple of branching commands. In this section, we ask you practice branching by completing the following two exercises.

### Branch and merge

1. Create a new branch based on master and call it whatever you want.
2. Switch to the new branch and **make sure that you’re in that branch**.
3. **Push your branch to the remote**. You should see a message that your new branch is now tracking a remote branch of the same name.
4. Run

```
python random_file_generator.py --file random2.txt
```

5. **Add, commit and push `random2.txt`**.
6. **Merge your branch with the master branch.** (hint: **`git merge`**) There should be no conflicts, so Git will be able to automatically perform a "fast-forward" merge without your intervention.
**NOTE**: Do not undo any of the commits performed so far!
7. Finally, **push the changes you just created** by merging the two branches to the remote.

## Submission

### Gradescope
In order to get credit for this assignment, you will submit a zip file containing your repository (`rss_lab1.zip`) to [Gradescope](https://gradescope.com/) under **Lab 1B: Intro To Git**.

Please **do not download** from [github.mit.edu](https://github.mit.edu) as a zip, **zip a local clone** instead.   
         
This lab is due on **Wednesday, February 19th at 1:00PM EST**.
