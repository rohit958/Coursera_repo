library(datasets)

data(mtcars)

head(mtcars,5)

library(ggplot2)
library(dplyr)

#Add a title

ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")


# boxplot

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine

ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

# histogram

ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
