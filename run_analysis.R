## Read 561 feature names
features<-read.table("features.txt")
## Read 6 activity labels
activity_labels<-read.table("activity_labels.txt")
## Read 2947 labels
y_test<-read.table("test/y_test.txt")
## Read data.frame:	2947 obs. of  561 variables
X_test<-read.table("test/X_test.txt")
## Read 7352 labels
y_train<-read.table("train/y_train.txt")
## Read data.frame:	7352 obs. of  561 variables
X_train<-read.table("train/X_train.txt")
## Read the subjects
subject_train<-read.table("train/subject_train.txt")
subject_test<-read.table("test/subject_test.txt")

##data.frames:	7352 obs. of  9X128 variables 
total_acc_x_train<-read.table("train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train<-read.table("train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train<-read.table("train/Inertial Signals/total_acc_z_train.txt")
body_acc_x_train<-read.table("train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train<-read.table("train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train<-read.table("train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x_train<-read.table("train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train<-read.table("train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train<-read.table("train/Inertial Signals/body_gyro_z_train.txt")


##data.frames:	2947 obs. of  9X128 variables
total_acc_x_test<-read.table("test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test<-read.table("test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test<-read.table("test/Inertial Signals/total_acc_z_test.txt")
body_acc_x_test<-read.table("test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test<-read.table("test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test<-read.table("test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x_test<-read.table("test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test<-read.table("test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test<-read.table("test/Inertial Signals/body_gyro_z_test.txt")

##Bind test data
testdata<-cbind(subject_test, y_test, X_test, total_acc_x_test, total_acc_y_test, total_acc_z_test, body_acc_x_test, body_acc_y_test, body_acc_z_test, body_gyro_x_test, body_gyro_y_test, body_gyro_z_test)

##Bind train data
traindata<-cbind(subject_train, y_train, X_train, total_acc_x_train, total_acc_y_train, total_acc_z_train, body_acc_x_train, body_acc_y_train, body_acc_z_train, body_gyro_x_train, body_gyro_y_train, body_gyro_z_train)

##Bind all data
alldata<-rbind(testdata, traindata)

## Calculate means
allmeans<-colMeans(alldata[c(-1,-2),])
