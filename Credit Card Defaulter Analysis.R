View(R_1P)  #Import Dataset nd View
#############################

# 1) Replace missing value with mean.
RP1= R_1P
# Replacing Bill Amounts with mean Value
RP1$BILL_AMT1[is.na(RP1$BILL_AMT1)]<-mean(RP1$BILL_AMT1,na.rm= TRUE)
RP1$BILL_AMT2[is.na(RP1$BILL_AMT2)]<-mean(RP1$BILL_AMT2,na.rm= TRUE)
RP1$BILL_AMT3[is.na(RP1$BILL_AMT3)]<-mean(RP1$BILL_AMT3,na.rm= TRUE)
RP1$BILL_AMT4[is.na(RP1$BILL_AMT4)]<-mean(RP1$BILL_AMT4,na.rm= TRUE)
RP1$BILL_AMT5[is.na(RP1$BILL_AMT5)]<-mean(RP1$BILL_AMT5,na.rm= TRUE)
RP1$BILL_AMT6[is.na(RP1$BILL_AMT6)]<-mean(RP1$BILL_AMT6,na.rm= TRUE)

# Replacing Payment Amount with mean.
RP1$PAY_AMT1[is.na(RP1$PAY_AMT1)]<-mean(RP1$PAY_AMT1,na.rm= TRUE)
RP1$PAY_AMT2[is.na(RP1$PAY_AMT2)]<-mean(RP1$PAY_AMT2,na.rm= TRUE)
RP1$PAY_AMT3[is.na(RP1$PAY_AMT3)]<-mean(RP1$PAY_AMT3,na.rm= TRUE)
RP1$PAY_AMT4[is.na(RP1$PAY_AMT4)]<-mean(RP1$PAY_AMT4,na.rm= TRUE)
RP1$PAY_AMT5[is.na(RP1$PAY_AMT5)]<-mean(RP1$PAY_AMT5,na.rm= TRUE)
RP1$PAY_AMT6[is.na(RP1$PAY_AMT6)]<-mean(RP1$PAY_AMT6,na.rm= TRUE)


# 2) Drop default status column. (Last one)

RP1= RP1[1:15] #dropped last column 

# 3) Select top 2000 rows.

head(RP1, n=200)
head(RP1,3) 

# 4) Select this column LIMIT_BAL, AGE, BILL_AMT1, PAY_AMT1

RP1[,c("LIMIT_BAL","AGE","BILL_AMT1","PAY_AMT1")]  #to show selected columns by name/index number/numeric sequence

library(dplyr)
select(RP1,c("LIMIT_BAL","AGE","BILL_AMT1","PAY_AMT1"))

# 5) Select those data only who has , BILL_AMT1 more then 50000.

Bill1= subset(RP1, BILL_AMT1 > 50000, select=c('BILL_AMT1')) 
Bill1 

# 6) Check the correlation on BILL_AMT1 vs PAY_AMT1.

attach(RP1) #that means all the functions are of this data frame
CR=cor(BILL_AMT1,PAY_AMT1)
CR # correlation comes to be 0.006 that means its strong negative correlation 

#7 ) Rename the column BILL_AMT1 as Bill_amount and PAY_AMT1 as pay_amount.

RP1= RP1[1:15]

#rename() doesn't change in data frame
#Assigning rename() to the dataframe permenantly chnges the column names. 
RP1<-rename(RP1,'Bill_amount'= 'BILL_AMT1')
RP1<-rename(RP1,'pay_amount'='PAY_AMT1')

colnames(RP1)
