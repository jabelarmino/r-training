#hello
log(10)
exp(67)
sqrt(365)
sin(pi/2)
x<-3*sin(pi/2)

print("hello")
?mean
print(x)

heights <- c(1, 2, 3, 4, 5)
mean(heights)
median(heights)
min(heights)

2026-2002
2*0+2/6
21%/%7
2^10
2*10

vector_wood <- c(exp(2), 2^3)
log(vector_wood)
log(vector_wood)^3

x<-0.01; y<- 0.105; z<-0.015
x==y
x>z
y<z
(y>x) & (y>z)
(z<y) | (z>x)

#assigning objects

x <- "Ericka"
x = "Ericka"
x == "Ericka"

dog_name <- "dog"
cat("dog name", dog_name)

#vectors
subs <- c('Physics', 'Math')
grades <- c(1.0, 1.25)
combined_vector <- c(subs,grades)
combined_vector

#list
econ <- c('sub1,', 'sub2')
mylist <- list(list(1.0, 2.0, "INC", "DRP"), subs, econ, sample(1:10, 3, replace = TRUE))
mylist

#matrix
confusion_matrix <- matrix(c('TP', 'FN', 'FP', 'TN'), nrow=2, ncol=2, byrow=TRUE)
confusion_matrix

truth_vector <- c(TRUE, FALSE, FALSE, TRUE)
truth_matrix <-  matrix(truth_vector, nrow=2, ncol=2, byrow=TRUE)
truth_matrix

truth_matrix <-  matrix(truth_vector, nrow=2, ncol=2, byrow=FALSE)
truth_matrix

#array
data_vector <- 1-24
my_array <- array(data_vector, dim=c(3,4,2))
print(my_array)

#data frame
name <- c("Ivy", "Paul", "Ryan")
sex <-  c("F", "M", "M")
age <-  c(23, 23, 24)

df <- data.frame(name, sex, age)

print(df)

class(df)
str(name)
typeof(age)

string.2026 <- as.character(2023)
string.2026

class_income <-  c('poor', 'rich', 'middle_income')
class_factor <- factor(class_income, levels = c("poor", "middle_income", "rich"))
typeof(class_factor)


install.packages("readxl")
install.packages("dplyr")
install.packages("tidyr")
install.packages("tidyverse")
install.packages("haven")
install.packages("ggplot2")
install.packages("writexl")

library(readxl)
library(dplyr)
library(tidyr)
library(ggplot2)
library(tidyverse)
library(magrittr)
library(stringr)

library(haven)
library(writexl)

getwd()
setwd("C:/Users/janelle/Desktop/R training")

hprice_df <- readxl::read_excel("C:\Users\janelle\Desktop\R training\DATASETS\hprice3.xlsx")
view(hprice_df)
head(hprice_df)
str(hprice_df)