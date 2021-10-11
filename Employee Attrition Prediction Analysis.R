View(RP2)  #Import dataset and View it 

# attrition is target nd other are predictions

# 1) Prepare a classification model with attrition as target.

library(dplyr)
set.seed(20) #works like random sample in python.
rows<-sample(nrow(RP2))  #creating a sample of RP2 data
RP2_data<-RP2[rows,] #shuffle rows for better model 
rows 

RP2_train<-sample_frac(RP2_data,0.8)  # 80% of the data is used or training data 
R_testid<-as.numeric(rownames(RP2_train)) 
RP2_test<-RP2_data[-R_testid,] #test data remaining 20% of data.

#Classification

library(rpart)
library(rpart.plot)

#Changing Categorical data into Numerical
RP2$Attrition[RP2$Attrition=='Yes']=1
RP2$Attrition[RP2$Attrition=='No']=0

table(RP2_train$Attrition)  #Train Data
table(RP2_test$Attrition)   #Test Data

prop.table(table(RP2_train$Attrition))
prop.table(table(RP2_test$Attrition))


#Decision Tree classification
#Modelling 

RP2_model<-rpart(Attrition~.,data=RP2_train)
print(RP2_model)

#Predicting

RP2_pred= predict(RP2_model,RP2_test,type='class') 
RP2_pred=data.frame(RP2_pred)
RP2_pred

#Confusion Matrix
table(RP2_test$Attrition,RP2_pred)   #Gives confusion Matrix
#     No  Yes
#No  242   9
#Yes  20  23

#Accuracy
265/295 

accuracy.meas(RP2_test$Attrition,RP2_pred) #Gives precision , recall nd F1 score.
