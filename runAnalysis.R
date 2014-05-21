library(reshape2) #need for melt function in step 5

# the readData function reads the files,
# labels columns, and adds activity and subject
readData <- function(dataDir, dataSet) {
  fullPath <- paste0(dataDir, "/", dataSet,"/")
  colNames <- read.table(paste0(dataDir,"/","features.txt"))[,2]
  activityID <- read.table(paste0(fullPath,"y_", dataSet, ".txt"))[,1]
  subjectID <- read.table(paste0(fullPath,"subject_", dataSet, ".txt"))[,1]
  readData <- read.table(paste0(fullPath,"X_", dataSet, ".txt"), col.names=colNames)
  readData <- data.frame(readData,activityID=activityID, subjectID=subjectID)
}

## Step 1 Read and "merge" rows
dataDir <- "./UCI HAR Dataset"  # Data Directory location
dataTest <- readData(dataDir,"test") # 
dataTrain <- readData(dataDir,"train")
fullData <- rbind(dataTest, dataTrain)

## Step 2 Subset to pertinent columns
extractCols <- grep("mean\\.|std|[ID]$", names(fullData)) #mean, std, or ID cols
extractData <- fullData[,extractCols] #subset to columns with mean, std, or ID

## Step 3 Label activity column with factor levels
activityLabels <- read.table(paste0(dataDir,"/","activity_labels.txt"),stringsAsFactors=F)[,2]
extractData$activityID <- factor(extractData$activityID, labels = activityLabels)

## Step 4 Clean and improve readibility of column names, generate first tidy dataset
# cleaning names to more readable and descripting format
# matching "camel casing"  convention for variable/column names
names(extractData) <- gsub("\\.", "", names(extractData)) #remove dots
names(extractData) <- gsub("mean", "Mean", names(extractData)) #capitalize mean
names(extractData) <- gsub("std", "Std", names(extractData)) #capitalize std


## Step 5 Summarize and generate 2nd tidy dataset
countCols <- length(extractData)
#melt data with IDs = activityID and subjectID against all others
meltData <- melt(extractData, id.vars=67:68, measure.vars=1:66)
# casting to convert the tall meltData into a tidy data set
tidyData <- dcast(meltData, activityID + subjectID ~ variable, mean)

## lastly, write tidyData to file
write.table(tidyData, "tidyDataset.txt")