## This program read in the raw data from the following website:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## The data was collected into one local folder manually before starting this script.
tidy_Samsung_data <- function(){
            
      
      # Start of part 1 of the assignment
      #Read in file for feature names, then create data frames of training and test features (X indep. variables)
      features <- read.table("./features.txt")
      x.test <- read.table("./test/x_test.txt", col.names = features[[2]])
      x.train <- read.table("./train/x_train.txt", col.names = features[[2]])
      subj.test <- read.table("./test/subject_test.txt")
      subj.train <- read.table("./train/subject_train.txt")
      x.test <- cbind(subj.test, x.test)
      x.train <- cbind(subj.train, x.train)
      
      names(x.test)[1] = "subject.id"     #these 2 lines are part 4 of the assignment
      names(x.train)[1] = "subject.id"
      
      #Read in activity labels and create data frames of training and test labels (Y dep. variables)
      act.labels <- read.table("./activity_labels.txt")
      y.test <- read.table("./test/y_test.txt")
      y.train <- read.table("./train/y_train.txt")
      
      #add columns to Y data frames where numbers are translated to activity labels
      #this is also part 3 of the assignment (and part 4)
      y.test <- transform(y.test, activity.name=act.labels[y.test[,1],2])
      y.train <- transform(y.train, activity.name=act.labels[y.train[,1],2])
      
      #merge the training and test sets (per the assignement instructions)
      #  NOTE:you would not want to do this in real life; it would be "data snooping" and ruin confidence
      #       data analysis results (eventually this column gets dropped because we take means of the columns)
      x.test[,"set.name"] = "test"
      x.train[, "set.name"] = "train"
      x <- rbind(x.train, x.test)
      
      y.test[,"set.name"] = "test"
      y.train[, "set.name"] = "train"
      y <- rbind(y.train, y.test)
      names(y)[1] <- "activity.id"  #part 4 of the assignment
      
      #Insert the Y activity data in first 2 columns of the X variables data
      data <- cbind(y, x[,1:562])  #not including set.name because it would be duplicated
      
      #change some of the columns to factor data type
      for (i in 1:4){
            data[,i] <- as.factor(data[,i])      
      }
      
      #Start of part 2 of the assignment
      data.size = dim(data)[2]
      has_mean <- grepl("mean", names(data)[5:data.size]) #I decided that meanFreq is also a mean variable
      has_std <- grepl("std", names(data)[5:data.size])
      has_Mean <- grepl("Mean", names(data)[5:data.size])
      
      mean_or_std <- has_mean | has_std | has_Mean        #get X columns with mean and std (also set.name)
      mean_or_std <- c(TRUE,TRUE,TRUE,TRUE,mean_or_std)   #add in Y columns/factors
      sub_data <- data[,mean_or_std]                      #subset data to remove non-mean/std columns
      
      #Part 3 of the assignment...see notes/code above...
      
      #Part 4 of the assignment...see notes/code above...
      
      #Start of part 5 of the assignment
      #split the data by test subject and the activity name
      s<-split(sub_data,list(sub_data$subject.id, sub_data$activity.name),5)
      data.size <- dim(sub_data)[2]
      split.mean <- sapply(s, function(sub_data) colMeans(sub_data[, 5:data.size]))
      
      #transpose the matrix and turn it into a dataframe
      split.mean <- t(split.mean) 
      split.mean <- as.data.frame(split.mean)
      
      #Use the row.names to recreate the subject.id and activity.name factors
      split.mean[,"subject.id"] <- as.factor(gsub( "\\..*", "", rownames(split.mean)))
      split.mean[,"activity.name"] <- as.factor(gsub( ".*\\.", "", rownames(split.mean)))
      
      #move the subject and activity factors to the front of the data frame and clean it up
      n.col <- dim(split.mean)[2]
      split.mean <- cbind(split.mean[,(n.col-1):n.col], split.mean[,1:(n.col-2)])
      row.names(split.mean) <- NULL
      
      #Update names of the X variables to show that they are aggregate means
      for (i in 3:n.col){
            colnames(split.mean)[i] = paste("MEAN.OF.",colnames(split.mean)[i],sep='')
      }
      
      #write the resulting tidy data set out to a file.
      write.table(split.mean,"./tidy_data.txt", row.name=FALSE)
}