BIO593 Assignment 3
================
Kevin Wong, Danielle Jordan, Roxy Roja
2018-03-26

Introduction of the data
------------------------

This document uses data with life-history, population, and ecological examples. This data can be cited here: <http://dx.doi.org/10.6084/m9.figshare.1314459>. We will provide an indepth analysis containing plots that visually represent trends in the data and statistical analyses to accurately describe the trends. We will outline 3 major questions with this dataset.

Introduction of the problem
---------------------------

Our analyses investigate how differential plot types can influences rodent species weight, sex ratios, hindfoot length, and abundances. The following markdown will couple illustrative figures with statistical analyses to determine if plot types affect rodent species.

``` r
#install.packages(c("dbplyr","RSQLite","tidyverse"))
library(dbplyr)
library(RSQLite)
library(tidyverse)
```

Loading Data and Installing packages
------------------------------------

``` r
download.file("https://ndownloader.figshare.com/files/2292169" , "data/portal_data_joined.csv") 
surveys <- read.csv("../data/portal_data_joined.csv", header=TRUE, na.strings = c("","NA")) #uploading csv
```

Question 1
----------

Does plot type affect the relationship between hindfoot length and sex of rodent species?

Question 2
----------

Does plot type affect the relationship between weight and sex of rodent species?

Question 3
----------

How does rodent species abundance change in each plot type? ![](BIO593_Assignment3_RMarkdown_files/figure-markdown_github-ascii_identifiers/Q3-1.png)
