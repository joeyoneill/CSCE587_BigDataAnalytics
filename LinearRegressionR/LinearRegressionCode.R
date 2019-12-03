# CSCE 587
# HW3
# Joseph O'Neill

# interpolated
y = MaunaLoa[,5]

# DecimalDate
x = MaunaLoa[,3]

# a.) plot y against x
plot(y ~ x)

# b.)
# Coefficients:
# (Intercept) x
# -2655.306 1.513
m = lm(y ~ x)
print(m)

# c.)
par(mfrow=c(2,2))
plot(m)

# d.)
# the residuals vs fitted graph shows us that the data is evenly distributed


# e.)
ypred = predict(m)
plot(y,y,type='l', xlab="observed y", ylab="predicted y")
points(y, ypred)

# f.)
# The data of MaunaLoa$interpolated plotted against MaunaLoa$DecimalDate
# is not i.i.d because it is not indepent nor random. It follows a linear regression
# therefore it can not be independent or indentically distributed.