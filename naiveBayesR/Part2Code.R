# Take Home Test 1
# CSCE 587
# Joseph O'Neill

# Part 2

library("e1071", lib.loc="~/R/x86_64-redhat-linux-gnu-library/3.5")

# 1.
NB1 <- naiveBayes(train_set1[,2:6], factor(train_set1[,1]))
NB2 <- naiveBayes(train_set2[,2:6], factor(train_set2[,1]))
NB3 <- naiveBayes(train_set3[,2:6], factor(train_set3[,1]))

# 2.

table(predict(NB1, test_set1[,2:6]), factor(test_set1[,1]))
#      0   1
#  0 137  33
#  1  45  82

table(predict(NB2, test_set2[,2:6]), factor(test_set2[,1]))
#      0   1
#  0 136  29
#  1  45  87

table(predict(NB3, test_set3[,2:6]), factor(test_set3[,1]))
#      0   1
#  0 140  18
#  1  46  93

# 3.
sensitivity1 = 82 / (82 + 33)
specificity1 = 137 / (127 + 45)
# sensitivity1 = 0.7130435
# specificity1 = 0.7513812

sensitivity2 = 87 / (87 + 29)
specificity2 = 136 / (136 + 45)
# sensitivity2 = 0.75
# specificity2 = 0.7513812

sensitivity3 = 93 / (93 + 18)
specificity3 = 140 / (140 + 46)
# sensitivity3 = 0.8378378
# specificity3 = 0.7526882

# 4.
avgSensitivity = (sensitivity1 + sensitivity2 + sensitivity3) / 3
avgSensitivity
# output: 0.7669604

avgSpecificity = (specificity1 + specificity2 + specificity3) / 3
avgSpecificity
# output: 0.7668603

# 5.
table(predict(NB1, train_set1[,2:6]), factor(train_set1[,1]))
#      0   1
#  0 291  48
#  1  76 179

table(predict(NB2, train_set2[,2:6]), factor(train_set2[,1]))
#      0   1
#  0 291  48
#  1  84 176

table(predict(NB3, train_set3[,2:6]), factor(train_set3[,1]))
#      0   1
#  0 270  52
#  1  93 179

# 6.
sensitivity1.v2 = 179 / (179 + 48)
specificity1.v2 = 291 / (291 + 76)
# sensitivity1.v2 = 0.7885463
# specificity1.v2 = 0.7929155

sensitivity2.v2 = 176 / (176 + 50)
specificity2.v2 = 291 / (291 + 84)
# sensitivity2.v2 = 0.7787611
# specificity2.v2 = 0.776

sensitivity3.v2 = 179 / (179 + 52)
specificity3.v2 = 270 / (270 + 93)
# sensitivity3.v2 = 0.7748918
# specificity3.v2 = 0.7438017

# 7.
avgSensitivity.v2 = (sensitivity1.v2 + sensitivity2.v2 + sensitivity3.v2) / 3
avgSensitivity.v2
# output: 0.780733

avgSpecificity.v2 = (specificity1.v2 + specificity2.v2 + specificity3.v2) / 3
avgSpecificity.v2
# output: 0.7709057

# 8.
# The average sensitivity and specificity of the train sets (avgSensitiviy.v2 & avgSpecificity.v2) 
# were greater than the values predicted on the test sets (avgSensitivity & avgSpecificity)
# because there is an easier prediction when you are comparing predictions based off data of
# a similar set (train vs test sets) and data that was exactly the same it was trained on
# (train vs train sets), this was to be expected.
# However, there was a larger difference in the average sensitivity sets than the specificity.
# Thus, showing us that through it there was an easier prediction within the positive prediction
# side of the data over predictions of specificity. Showing the model predicted if a subject
# survived a lot better than when it predicted it to not survive off of the trained data comparisons.