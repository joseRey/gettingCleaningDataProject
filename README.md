Getting and Cleaning Data Project README
==========================

This repo contains the following files:
* __runAnalysis.R__ <- This file contains an script that collects, massages, and cleans data from across multiple files contained in the "UCI HAR Dataset" directory (not on this repo, but can be obtained by downloading and unzipping from it from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). This is the only script, which transforms the data in 5 steps, and then saves it. More on this file can be read in the Code Book.
* __README.md__ <- This markdown file, explaining the processing steps that lead to the tidy dataset.
* __tidyDataset.txt__ <- the cleaned and processed data
* [__CodeBook.md__](/CodeBook.md/) <- The Code Book, which is a markdown file describing variables, data, and transformations performed on the raw data so that it could become the tidy dataset.

More in specific, __runAnalysis.R__, the script in this repo does the following:

1. __Step 1__. Read two raw data sets from several files
2. __Step 2__. Subset pertinent columns
3. __Step 3__. Label the activity column with factor levels
4. __Step 4__. Clean up column (variable) names for readibility
5. __Step 5__. Summarize (means by activity and subject) into tidy dataset

More details about the process can be found in the [Codebook](//CodeBook.md//)