Getting Started with R
================
Parker Kain
August 5, 2018

Introduction
============

R is an extremely versatile language built for Data Science, with east to read syntax, and a smooth learning curve that allows the user to handle the Data Science pipeline from loading in data, processing and analyzing data, through creating beautiful visualizations. This tutorial sequence will teach you the basics of R, and give you a basis off of which you can learn even more. Since R is Open Source, meaning anyone can add to the libraries and functions of R, it would be impossible to teach everything that there is to learn in R, and so we will be focusing on the core set of tools that much of R is built on. Please check the References page for reccomendations for books that can help to deepen your understand, as this is meant to be a surface level guide for getting started.

In order to even get started programming, we need to get set up by downloading R itself, and its universally accepted IDE (programming environment), RStudio.

Downloading and Installing R
============================

Downloading R - Windows
-----------------------

The download links for R are available at <https://cran.r-project.org/mirrors.html>, at which you will find links for whatever country you are in. For the US, I have always used the first option for UC Berekely, though there shouldn't be a difference using any of the other options, it just varies where you are downloading from. After clicking on your favorite option, you should be redirected to a page that looks like the one pictures below, at which point you can click on the download link for Windows

![](figures/RDownloadSnip.PNG)

From here, just click on the downloaded item, and follow the instructions in the downloader. If there's any options to choose from, the default is normally the safe bet.

Downloading R - Mac
-------------------

Coming Soon!

Downloading RStudio
-------------------

So now you have R downloaded, which is great! Techincally you can do everything you need to in just regular R, but luckily for you, that isn't neccessary, since regular R is far from pretty. RStudio was developed in 2011, and is currently led by their Chief Scientist Hadley Wickham, a name you will hear a lot about as you get more and more into R Programming.

![The Man, The Myth, The Legend, Hadley Wickham](figures/hadley.jpg)

To download RStudio, just go to <https://www.rstudio.com/products/rstudio/download/#download>, click on your operating system, and run the executive. The installer should take it from there! At the end, you should have a nice new RStudio application that you can run, and we can get a bit more comfortable with it now.

Getting Familiar With RStudio
=============================

Upon opening RStudio, you should see something that looks like this:

![](figures/RStudioSnip.png)

This screen consists of three parts. The left side of the screen is your console, you can type code in there and hit enter and it will run immediately. On the top right, we have a couple of tabs, but the most important is the one that is already selected "Environment". This pane will show any variables that you have saved in the current session, which is very helpful to keep track of what your data looks like. We'll see more of this in a minute. Also, in the bottom right, is another pane with a few tabs.

-   The Files tab will show us where our work is currently being saved (especially useful if you are saving off .csv files, visualizations, or anything else you may be exporting).
-   The Plots tab will show any plots we currently have rendered, which we will get into when we learn ggplot2 later on.
-   The Packages tab is useful to see what R libraries we currently have access to, which once again we will learn about in a little bit.
-   The Help tab can display useful R Documentation about any packages, functions, or general questions you have along the way.
-   And the Viewer is for rendering a lot of different HTML enabled widgets, which for the purposes of this tutorial will not come up at all.

Customizing Your RStudio - Themes
---------------------------------

RStudio has a plethora of customization options when it comes to screen color, font, which panes are on what part of the screen, code snippets, etc. Many of these can be found in the "Global Options" portion of the "Tools" tab at the top of the screen.

![](figures/GlobalOptions.png)

For my personal preference, under the Appearance tab on the Global Options Screen, I changed the font to "Courier New", and the Editor Theme to "Cobalt", which for reference makes your RStudio look as such:

![](figures/Cobalt.png)

I think this looks really nice, but play aorund with it and find a combination that you like! You'll see this theme for any snips I include for the rest of the tutorials, but of course this has no bounds on your code or how anything runs.

Basic R Programming
===================

Now, we can start to look at actually programming in R!

### R As a Calculator

Let's begin by looking at the console pane. As stated before, this console can be used to "iteractively" run code, meaning you type it, press enter, and it runs immediately! For example, let's look at a couple of quick calculations we can do:

``` r
2 + 2
```

    ## [1] 4

``` r
135 / 4
```

    ## [1] 33.75

``` r
1.23 ** 2 #This is squaring 1.23
```

    ## [1] 1.5129

You can see a more exhaustive list of R operators at <https://www.statmethods.net/management/operators.html>. Also as a note, `#` in any R code denotes a comment, meaning that anything after the pound sign will not be run. This is great for commenting your code so others know what is happening (a practice that does not happen nearly enough), and you will see me use it frequently in this tutorial to denote what lines are doing.

R File Management
-----------------

### R Scripts

Naturally, for any longer project, you aren't going to want to write code in the console for every project, you'd much rather have multiple lines of code that can run all at once, more like other more traditional programming languages. R has this built in, in the form of R Scripts. At the top of your screen, click File &gt; New File &gt; R Script to open up a new pane in your R Studio. In this new file, you can type lines of code just as before, but they will be saved after you run them so they can be run again and again. These can be saved just like a Word Document to any folder you want (and Ctrl + S will save your document, so you don't have to click on the Floppy Disk each time). To run a line, just click on the line you'd like to run, and click run at the top of the pane. You'll see that as you do this, that code will be copied down to the console below and run, and the output will appear there as well. You can also use Ctrl + Enter when a line is selected to run that line, or highlight multiple lines with your mouse and use Ctrl + Enter to run them in sequence. This is the primary way to do R Programming for day to day projects, and you can even copy the lines of code displayed in this document and run them in your own scripts as well to check and make sure that they do as you would think.

### R Projects

Just as you may have various folders on your computer to hold files that all pertain to the same thing, R Projects are a homebase for all of the code, data, and results for any given Project. They are not mandatory, but for clean code and best practices when it comes to File Management, I highly reccomend R Projects. To create your own, click on the top right of your screen where you see "Project: (None)", and then "New Project".

``` r
knitr::include_graphics('figures/Projects.png')
```

![](figures/Projects.png)

You can then Select "New Directory &gt; New Project", name you project (you could make this one "R Training"), and select where you want this Project to be located. Now everything shoiuld look like you just opened RStudio again for the first time, but now any packages you install , variables you create, etc. will stay in this Project, making them easy to keep separate from other things you're working on. I normally create new Projects for every class I'm taking that may use R, and separate projects for any other side work I may be doing. If you create one for this Tutorial, then you can come back and reference all of the code you wrote another time without interrupting any of your other code and creating a very messy environment.

R Basics
--------

### Variable Assignment

This is neat and all, but of course we want to do much more than this in R. You can save the results of a line of code to a variable by using an arrow, such as `<-`, where whatever is happening to the right of arrow will be stored to whatever is on the left. This can be flipped using `->` (though it isn't a great habit to get into), or if you have a background i nother programming languages, you can just use a regular `=` to do the same assignment as `<-`. For example:

``` r
x <- 5
y = 10 * 2
x / y -> z
```

See that if you run these lines in your own console, the variables x, y, and z will no2 appear in the Environment tab in RStudio as such.

![](figures/VariableAssignment.png)

This makes it very easy for us to keep track of our variables, and remember what is happening to them. This can be a double edged sword, however, as long projects can create very cluttered environments. If you ever decide to try something out in your code, save it to a variable, and then decide you no longer want this variable, you can use `rm(variableName)` (where variableName is, well, your variable name) and this will be removerd from your environment. Alternatively, you can click the broom icon on the environment pane to remove **all** of your variables, however keep in mind that any code that involves these variables will now not run until you reassign those variable names. For example:

``` r
myNewVariable <- 20 #Assign the variable myNewVariable

myNewVariable * 10 #Print out something basic
```

    ## [1] 200

``` r
rm(myNewVariable) #Now remove the variable from my environment

myNewVariable * 10 #Now this will throw an error, since myNewVariable no longer exists
```

    ## Error in eval(expr, envir, enclos): object 'myNewVariable' not found

R Data Types
------------

### Base R Functions

R also comes loaded with some nice functions that we can use, such as getting a square root of a number, truncating a string, .........