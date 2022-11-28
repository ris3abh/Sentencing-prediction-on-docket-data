# Sentencing_prediction

This machine learning and deep learning project is the final project for the CS-613 course.
Here using various variables like the age at arrest, description of crime, race, sex and more a prediction is made
about what would be the type of sentencing. 

The dataset can be collected from- https://github.com/rladiesPHL/2021_datathon/tree/main/data

The datasets consist of various files which gives us information about the docket. During the pre-procesing, we clean the data transforming the catgeorical
features into ordinal features using lable encoding and the description data using one hot encoding.

There are 5 types of sentencing in the dataset.- 
1. Probabation - 110355 datapoints
2. Confinement - 46705 datapoints
3. No further Penalty - 17693 datapoints
4. Merged - 8196 datapoints
5. IPP - 2456 datapoints

Since there is an imbalance in the dataset we will have to use artificial oversampling using SMOTE(Synthetic Minority Over-sampling Technique). 
Once the data preprocessing is done, we developed 4 models to predict the sentencing. Since it is a classification problem.-

1. Multiclass Classification using deep learning - accuracy = 70%
2. Decision Tree Multiclass Classifier - accuracy = 
3. Naive Bayes Multiclass Classifier - accuracy = 
4. XGBoost Multiclass Classifier - accuracy = 73% accuracy.
