#TASK 1
name <- c('Ana', 'Cleo', 'Ben', 'Elle', 'Dan')
name
score <- c(89, 95, 90, 98, 92)
score
grade_level <- c('Freshman', 'Freshman', 'Sophomore', 'Sophomore', 'Junior')
grade_level


student_df <- data.frame(name, score, grade_level)
student_df

student_df$grade_level <- factor(student_df$grade_level, levels = c("Freshman", "Sophomore", "Junior"))
class(student_df$grade_level)

score_mean <- mean(student_df$score)
score_mean

min_score <- min(student_df$score)
min_score

max_score <- max(student_df$score)
max_score

stats <- c(Mean=score_mean, Min=min_score, Max=max_score)
print(stats)

#TASK 2
set.seed(123)
rand_int= sample(1:99, 16, replace = TRUE)
my_matrix <- matrix(rand_int, nrow=4, ncol=4, byrow=TRUE)
my_matrix

mymatrix_sum <- sum(my_matrix)
mymatrix_sum
mymatrix_rowmeans <- rowMeans(my_matrix)
mymatrix_rowmeans
mymatrix_colsums <- colSums(my_matrix)
mymatrix_colsums

my_matrix[my_matrix%%2==0] <- 0
my_matrix

my_df <- as.data.frame(my_matrix)
print(my_df)

greater50 <- sum(my_df>50)
greater50