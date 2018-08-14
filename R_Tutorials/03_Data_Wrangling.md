Data Wrangling
================
Written by the NKU Data Science Club

-   [Introduction](#introduction)
-   [Tidy Data](#tidy-data)
-   [dplyr](#dplyr)

Introduction
============

This tutorial is meant to help you take your data, and get it into the form that you want it to be in for analysis. The preprocessing step of the data science pipeline is an oft-forgotten portion that takes up a **LOT** of time (and can potentially be very frustrating). The goal here is to help make those steps less frustrating, and help you get started with data science pipeline!

Tidy Data
=========

Now, for the vast majority of analysis, you'll be dealing with data in R in a data frame. You'll have rows of observations and columns of variables that pertain to those obersvervations. This lines up with a key concept of R programming, which is tidy data.

Tidy data is defined by Hadley Wickham as data where:

1.  Each variable must have its own column.
2.  Each observation must have its own row.
3.  Each value must have its own cell.

![](figures/tidyData.PNG)

dplyr
=====
