# Overview #1

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

# Overview #2

The goal of this second part of the project was to build a machine learning model that can predict if a member of the Quorum of the 12 will ever become president of the Church of Jesus Christ of Latter-day Saints. I wanted to apply my machine learning skills to real-world data and make real-world predictions on matters that are interesting to me.

The dataset used for this project was one I created on my own by scraping data from Wikipedia, and then wrangling it using R to find the information I need. This dataset can be found in `apostles_clean.csv`. It contained columns pertaining to the birth of each apostle in this dispensation, along with when they were ordained, how many apostles were younger than them, the age of all the other apostles when they were ordained, and other important features.

The purpose for this project was primarily to see if I could find out which apostles will become presidents of the Church.

[Software Demo Video](https://youtu.be/isAiV2nQw-c)

# Data Analysis Results

The end results were that Oaks, Eyring, Christofferson, Gong, Soares, and Kearon would all become president of the Church.

# Development Environment

Python and R were used to develop this in R studio and VSCode. Pandas, Sklearn, and other python libraries were used to build the MLM and make predictions.

# Useful Websites

* [Sklearn docs](https://scikit-learn.org/stable/)
* [Numpy Docs](https://numpy.org/doc/)

# Future Work

* Some of the data might still not be 100% accurate and could benefit from more efficient scraping/gathering methods.
* This model will grow more accurate with time as more apostles pass and data is added into the training set. Make a pipeline that can automatically do this.
