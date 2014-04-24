# Always set the seed for reproducibility
set.seed(123)

# Download the file specified into a "data" directory
dataDir <- "./data" 
if (!file.exists(dataDir)) {dir.create(dataDir)}
datasetUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFileLocalName <- paste(dataDir,"PhoneDataset.zip",sep="/")
download.file(datasetUrl, destfile=zipFileLocalName,method="curl")

#Unzip the downloaded file
unzip(zipFileLocalName,exdir=dataDir)
unzipDirName <- paste(dataDir,"UCI HAR Dataset",sep="/")
trainDirName <- "train"
testDirName <- "test"

# Create the train data frame
# First read the train subjects data, then the train activity data & finally the train variable data
trainSubjects <- read.table(paste(unzipDirName,trainDirName,"subject_train.txt",sep="/"))
trainActivities <- read.table(paste(unzipDirName,trainDirName,"y_train.txt",sep="/"))
trainDataSet <- read.table(paste(unzipDirName,trainDirName,"X_train.txt",sep="/"))
trainData <- cbind(trainSubjects, trainActivities, trainDataSet)

# Create the test data frame
# First read the test subjects data, then the test activity data & finally the test variable data
testSubjects <- read.table(paste(unzipDirName,testDirName,"subject_test.txt",sep="/"))
testActivities <- read.table(paste(unzipDirName,testDirName,"y_test.txt",sep="/"))
testDataSet <- read.table(paste(unzipDirName,testDirName,"X_test.txt",sep="/"))
testData <- cbind(testSubjects, testActivities, testDataSet)

# Combine the two data frames into one single frame
outputDF <- rbind(trainData,testData)

# Read the features.txt file to get the column names for the variables 
# Append it to the list containing the first two column names
featureNames <- read.table(paste(unzipDirName,"features.txt",sep="/"))
colnames <- c("subject","activitycode",tolower(as.vector(featureNames[[2]])))
names(outputDF) <- colnames

# Create a data frame that is a subset of the original
# containing only the subject, activity, mean, standard deviation columns
# Remove all the special characters from the column names
filteredOutput <- outputDF[,c(1,2,grep("(mean|std)\\(\\)",names(outputDF)))]
names(filteredOutput) <- gsub("[[:punct:]]","",names(filteredOutput))

# Calculate the average for each activity/suject on each variable using the aggregate function
result <- aggregate(filteredOutput, list(subjectgroup=filteredOutput$subject,activitygroup=filteredOutput$activity),mean,na.rm=TRUE)

# Read the acitivy_labels.txt file to correlate the numeric activity with a descriptive value
# Add a new descriptive activity column to the result and remove the numeric column
activityNames <- read.table(paste(unzipDirName,"activity_labels.txt",sep="/"))
result$activity <- activityNames[result$activitycode,2]

# Remove the redundant activity/subject columns
result <- result[,c(-1,-2,-4)]

# Write the results to a file
write.table(result,file="Results.txt")

