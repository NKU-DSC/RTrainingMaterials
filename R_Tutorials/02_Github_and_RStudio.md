Github with RStudio
================
Written by the NKU Data Science Club

-   [What is Git/Github?](#what-is-gitgithub)
-   [Git / Github Installation and Setup](#git-github-installation-and-setup)
    -   [The Github Desktop Way](#the-github-desktop-way)
    -   [The Command Line Way](#the-command-line-way)
-   [Using Git / Github](#using-git-github)
    -   [Creating a Repository](#creating-a-repository)
    -   [Github and RStudio](#github-and-rstudio)
    -   [Working on the NKU-DSC Repository](#working-on-the-nku-dsc-repository)

What is Git/Github?
-------------------

From the git website itself:

"Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency."

Put simply, git is a great way to manage your code over time, especially one projects where you're working with multiple people. If you've ever been in a group coding project, you've probably emailed versions of datasets and code back and forth trying to make progress, ending up with a program whose name is something like "FINAL ANALYSIS V4.5 ACTUALLY FINAL THIS TIME FOR REAL". Git helps you manage this for the programs you have on your machine, and github makes those files available anywhere, for anyone you want, at anytime. You're most likely reading this tutorial on Github right now, so you can also see the power it has to host markdown documents that are legible and easy to find.

To begin, let's get git setup, see what it can do, and then get started with GitHub.

Git / Github Installation and Setup
-----------------------------------

There are two main camps when it comes to using Git and GitHub, and you can think of it a lot like the R versus Python debate (everyone is right but we're all mad anyway).

1.  **Command Line Git/Github**
    This is the git was orignially made to be used. You can save the version of your code in some command line code, and push them to github online with even more command line code. Though very fast and simple once you climb an initial learning curve, I think this method can be a little more tricky to understand at first for people that are not very familiar with command line.

2.  **Github Desktop**
    Back in 2015, the people behind Github decided to try to make it even easier to use git, and so they created an application you can download that can handle all of your file management for your without any command line code. This application is called Github Desktop! It gives you a more visual representation of what is going on, and in my opinion is a little more intutitive than traditional git.

When ti comes to picking one or the other, there really is no correct way. If you are not familiar with using the command line much, I would reccomend Github Desktop, though in the long run, it's probably more univerasally applicable for future jobs to have a working knowledge of command line git.

**The Silver Lining**
Luckily for any future R users out there (that's you!) no matter which one of these you choose, you will not have to interact with git outside of RStudio very often. I'll go over the basics just so establish some base concepts, but then we can see how RStudio can make this all even easier!

### The Github Desktop Way

Github Desktop is very easy to set up, it really does all the heavy lifting for you! Visit the link: <https://desktop.github.com/> and click the download link to get going. This will follow you through creating a Github account, establish your name and email, and downloading the actual desktop application, which you will use for any management you want to do. A nice thing to add here is this will set up command line git along the way, so if you ever decide you want to switch, it's no problem at all!

### The Command Line Way

So you've decided to do things the purist way, nice! Git and Github is not hard to get set up, even on command line, so let's get started!

#### Windows

If you're on windows, just go to <https://git-scm.com/download/win>, and the download hould happen automatically. Just click the executable and follow the steps provided!

#### Mac

I haven't tried this, since I don't have mac, but apparentrly you can type `git` on the terminal, and it will prompt you to install git!

#### First Time Git Configuration

After following through with the installation, you should now have access to the Git CMD application!

``` r
knitr::include_graphics('figures/GitCMD.png')
```

![](figures/GitCMD.png)

Open this, and you should now see a command line interface. This is git in it's purest form! On this screen, type the following:

`git config --global user.name "Your Name Here"` `git config --global user.email YourEmail@nku.edu`

Now git knows who you are, so when you publish things it knows who to thank!

#### Github Setup

Coming Soon!

Using Git / Github
==================

As an administrative note, from this opoint on I'll be talking generally about the concepts that drive git and github, not any code that does it. This is so we can understand the basic mechanics and move into RStudio as quickly as possible. If you are interested in learning more about command line git and its inner workings, yoiu can visit its documentation and guide at <https://git-scm.com/book/en/v2/>.

Creating a Repository
---------------------

Now, let's talk about the core concepts behind Github. The places where you see other people's code, and potentially store your own are called repositories (often called repos). For example, all of these tutorials are hosted on <https://github.com/NKU-DSC/RTrainingMaterials>. NKU-DSC is the account name here, and RTrainingMaterials is the repository the code is housed in. Users can have multiple repositories if they like (we could start PythonTrainingMaterials some day!), and the user that created the repository essentially owns that space. They can grant permissions to change the code in those repositories, keep them private, or handle the administrative side of the repository. Repos are great for separating your work, as then all of the work inside a repository can be related to the same overarching project. For the sake of this tutorial, the key takeaways are:

-   Repositories house code related to an overarching project.
-   The owner of a repository can change the documents in that repository as they wish, and
-   Other users can request to push changes to a repositories code base in a process called "Pull Requests", which we'll talk about in just a second.

Now, let's go over a demo where we create our own repo, write a short R script, and host the code on GitHub.

Github and RStudio
------------------

Before we get going, we have one last little bit of setup to do, and that's connecting our git to RStudio. In RStudio, go to Tools &gt; Global Options &gt; Git/SVN, and there you should see a menu option that says "Git executable". Click browse, and find your git.exe on your computer. If you are on Windows, it should be in a similar file path to what you see in the below screen shot, or on Mac it should be in either `/usr/bin/git`, `/usr/local/bin/git`, or `/usr/local/git/bin/git`. Find yours, and hit OK at the bottom of the menu.

``` r
knitr::include_graphics('figures/GitGlobalOption.png')
```

![](figures/GitGlobalOption.png)

Working on the NKU-DSC Repository
---------------------------------
