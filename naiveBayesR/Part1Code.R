# Take Home Test 1
# CSCE 587
# Joseph O'Neill

# Part 1

# 1.
col2asFactor <- factor(titanic_train$Survived)

# 2.
titanic_subset <- subset(titanic_train, select = c(2,3,5,6,7,8))

# 3.
# a.
set.seed(587)

# b.
indices <- split(sample(nrow(titanic_subset), nrow(titanic_subset),replace=FALSE), as.factor(1:3))

# c.
test_set1 <- titanic_subset[indices[[1]],]
train_set1 <- titanic_subset[-indices[[1]],]

test_set2 <- titanic_subset[indices[[2]],]
train_set2 <- titanic_subset[-indices[[2]],]

test_set3 <- titanic_subset[indices[[3]],]
train_set3 <- titanic_subset[-indices[[3]],]