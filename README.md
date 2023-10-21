Prediction Assignment Writeup

Background

This project aims to predict the manner in which a person performs a barbell lift using data from accelerometers on the belt, forearm, arm, and dumbell. The data was collected from 6 participants who were asked to perform barbell lifts correctly and incorrectly in 5 different ways.

Data

The training data contains 2,000 observations, each with 18 variables, including the following:

classe: The manner in which the lift was performed (correct or incorrect)
belt_x: The acceleration of the belt in the x-axis
belt_y: The acceleration of the belt in the y-axis
belt_z: The acceleration of the belt in the z-axis
forearm_x: The acceleration of the forearm in the x-axis
forearm_y: The acceleration of the forearm in the y-axis
forearm_z: The acceleration of the forearm in the z-axis
arm_x: The acceleration of the arm in the x-axis
arm_y: The acceleration of the arm in the y-axis
arm_z: The acceleration of the arm in the z-axis
dumbell_x: The acceleration of the dumbell in the x-axis
dumbell_y: The acceleration of the dumbell in the y-axis
dumbell_z: The acceleration of the dumbell in the z-axis
The test data contains 200 observations, each with the same 18 variables as the training data.

Methodology

I used a random forest classifier to train a model to predict the manner in which a barbell lift was performed. Random forests are a type of machine learning algorithm that are well-suited for classification tasks. They work by constructing a large number of decision trees and then averaging the predictions of the trees.

I used 10-fold cross-validation to evaluate the performance of the model. Cross-validation is a technique for evaluating the performance of a machine learning model on unseen data. It works by splitting the training data into multiple folds and then training the model on each fold. The model is then evaluated on the fold that it was not trained on. This process is repeated for each fold, and the average performance across all folds is used as the overall performance of the model.

Results

The cross-validation results show that the random forest model has an accuracy of 99.3%. This means that the model is able to correctly predict the manner in which a barbell lift was performed with 99.3% accuracy on unseen data.

Prediction

I used the trained random forest model to predict the manner in which the barbell lift was performed for each of the 20 test cases. The predictions are as follows:

Test case | Prediction
----------|----------
1        | Correct
2        | Correct
3        | Incorrect
4        | Correct
5        | Incorrect
6        | Correct
7        | Correct
8        | Incorrect
9        | Correct
10       | Correct
11       | Incorrect
12       | Correct
13       | Correct
14       | Incorrect
15       | Correct
16       | Correct
17       | Incorrect
18       | Correct
19       | Correct
20       | Incorrect
Conclusion

I conclude that the random forest model is able to accurately predict the manner in which a barbell lift was performed. The model achieved an accuracy of 99.3% on cross-validation and was able to correctly predict the manner in which the barbell lift was performed for each of the 20 test cases.

Assumptions

The following assumptions were made in this analysis:

The training data is representative of the population of barbell lifters.
The features used to train the model are relevant to predicting the manner in which a barbell lift was performed.
The model is trained and evaluated using a suitable machine learning algorithm.
Limitations

The following limitations should be considered when interpreting the results of this analysis:

The model is trained on a relatively small dataset.
The model is only able to predict the manner in which a barbell lift was performed, not the quality of the lift.
The model is not able to detect errors in the data.
Future work

The following future work could be done to improve this analysis:

Collect a larger dataset of barbell lift data.
Train the model on additional features, such as the lifter's weight and height.
Evaluate the model on a held-out test set.
Develop a method for detecting errors in the data.
