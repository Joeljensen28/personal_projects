# Overview

The goal of this project is to build a machine learning model that can predict if an apostle will ever become the prophet of the Church of Jesus Christ of Latter-day Saints. This part is focused on the web scraping and data wrangling portion of the project, and soon the actual fitting and prediction will be developed.

I developed this after an increased fascination with church history and, especially with the recent ordination of Elder Kearon, a curiosity to figure out what the odds are that he becomes president.

[Software Demo Video](https://www.youtube.com/watch?v=Wj8aXNz9RO8)

Data was scraped from the Wikipedia page on [List of members of the Quorum of the Twelve Apostles (LDS Church)] (https://en.wikipedia.org/wiki/List_of_members_of_the_Quorum_of_the_Twelve_Apostles_(LDS_Church))

# Development Environment

This program was developed using VSCode, Rstudio, Python3.11 (pandas, BeautifulSoup, requests) and R (tidyverse, lubridate, stringr)

# Useful Websites

* [Tidyverse documentation](https://www.tidyverse.org/)
* [BeautifulSoup documentation](http://url.link.goes.here)

# Future Work

Scraping and wrangling is complete, only things left to complete are as follows:
* Make dataset ML ready (one hot encode)
* Build MLM
* Train model