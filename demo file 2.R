

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

file.choose()

hprice_df <- readxl::read_excel("C:\\Users\\janelle\\Desktop\\R training\\DATASETS\\hprice3.xlsx")
view(hprice_df)
head(hprice_df)
str(hprice_df)

write_xlsx(hprice_df, file.path(getwd(), "DATASETS", "SampleExcelFile.xlsx"))

wage_path <-  file.path(getwd(), "DATASETS", "wagepan.csv")
wagepan_df <- read_csv(wage_path)

wagepan_df1 <- read_csv("wagepan.csv")
write_csv(wagepan_df1, "SampleCSVfile.csv")

view(wagepan_df)
head(wagepan_df)
str(wagepan_df)

write_csv(wagepan_df, file.path(getwd(), "DATASETS", "SampleCSVFile.csv"))


stata_data_path <-  file.path(getwd(), "DATASETS", "prminwge.dta")
stata_df <- read_dta(stata_data_path)

view(stata_df)
head(stata_df)
str(stata_df)

write_dta(stata_df, file.path(getwd(), "DATASETS", "SampleStataFile.dta"))

#%>% |> takes output of one function and passes it into another function as an argument (input) ctrl shift M
#dataframe |> view() |> one more function

#df |> filter(sex=="FEMALE", salary >30000)
#df |>  slice(vector_of_rows, ...)
#slice_head/ slice_tail
#slice_sample random lol
#slice_min/slice_max
# df |> arrange(column_name) #asc (default) or desc
# df |> rename(new_name = old_name)

# df |> select()
# df |> mutate() added to the last col of the df

# .group=drop so that the next lines of code are no longer grouped


df1a <- wagepan_df |> filter(year==1980, married == 1, south == 1) #comma means end
view(df1a)

df1b <- wagepan_df |> filter(year==1980 | married ==1)
view(df1b)

df1c <- wagepan_df |> slice(1:100)
view(df1c)

df1d <- wagepan_df |> slice_max(prop = 0.1, order_by = year, with_ties = F)
view(df1d)

df1e <- wagepan_df |> arrange(desc(educ))
view(df1e)

df2a <- wagepan_df |> rename(person_id = nr , log_wage =lwage) |> select(person_id, year, log_wage, exper, expersq, educ, hours, everything()) |> arrange(desc(year))
