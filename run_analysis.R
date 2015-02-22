
library(dplyr)
library(tidyr)
setwd("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset")
#1.a. read features, activities names from the main files
activity       <-read.table("activity_labels.txt")
names(activity)<-c("ID_Activity","Activity")
features       <-read.table("features.txt", header=FALSE)
names(features)<-c("ID_features","feature")


#Read and combine data  on features
datax_test       <-read.table("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset\\test\\X_test.txt", header=FALSE)
datax_train      <-read.table("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset\\train\\X_train.txt", header=FALSE)
datax<-rbind(datax_test,datax_train)

#Read and combine data on activities
datay_test      <-read.table("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset\\test\\Y_test.txt", header=FALSE)
datay_train     <-read.table("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset\\train\\Y_train.txt", header=FALSE)
datay           <-rbind(datay_test,datay_train)
names(datay)    <-"ID_Activity"

#Read and combine data on subjects
datasubject_test <-read.table("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset\\test\\subject_test.txt", header=FALSE)
datasubject_train <-read.table("R:\\AMVALCU\\cleaningdata\\UCI HAR Dataset\\train\\subject_train.txt", header=FALSE)
datasubject     <-rbind(datasubject_test, datasubject_train)
names(datasubject)<- "ID_Subject"

#select relevant columns mean and stand. dev.
datax_name<-filter(features,grepl("mean()|std()", feature),!grepl("meanFreq", feature))
datax<- select(datax,datax_name[,1])
#rename the columns 
colnames(datax)<-sub("[(]", "", datax_name[,2])
colnames(datax)<-sub("[)]", "", colnames(datax))

#combine all the data
bigdata<-bind_cols(datasubject, datay, datax)
#lable the features column
data<-full_join(activity,bigdata)

# create the final dataset that computes averages of the selected features by subject and activity

final<- data %>% group_by(ID_Subject,Activity)%>%
summarise_each(funs(mean))
  

#save the file
write.table(final, "R:/AMVALCU/cleaningdata/mydata.txt", sep="\t", row.name=FALSE) 


#####second option, deep format
final<-data %>% gather(data,Mean, -ID_Subject,-ID_Activity,-Activity) %>% group_by(ID_Subject,Activity,data)%>%summarise(Average=mean(Mean))
write.table(final, "R:/AMVALCU/cleaningdata/mydata2.txt", sep="\t", row.name=FALSE) 


