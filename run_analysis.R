# read column labels
col_labels <- read.table("./features.txt")

# Read training data
train_data <- read.table("./train//X_train.txt",header=F)
train_subject <- read.table("./train/subject_train.txt",header=F)
train_y <- read.table("./train//y_train.txt",header=F)

# Read test data
test_data <- read.table("./test/X_test.txt",header=F)
test_subject <- read.table("./test//subject_test.txt",header=F)
test_y <- read.table("./test//y_test.txt",header=F)

# merging both the training data and the test data
training_data <- cbind(train_subject,train_y,train_data)
testing_data <- cbind(test_subject,test_y,test_data)
full_data <- rbind(training_data,testing_data)

mean_index <- grep("mean|std",col_labels$V2)
mean_index_p_2 <- mean_index + 2
subset_data <- full_data[,c(1,2,mean_index_p_2)]
colnames(subset_data) <- c("subject","y",as.character(col_labels[mean_index,2]))
subset_data$subject <- as.factor(subset_data$subject)
activity_labels <- read.table("./activity_labels.txt",header=F)
subset_data$activity_label <- factor(subset_data$y,labels=activity_labels$V2)
require(reshape2)
melted_data <- melt(subset_data,id=c("subject","y","activity_label"),measure.vars=colnames(subset_data)[-c(1,2,82)])
casted_data <- dcast(melted_data,subject+activity_label+y~variable,mean)
write.table(casted_data,file="./tidy_data.txt",col.names=T,row.names=F,sep="\t")
