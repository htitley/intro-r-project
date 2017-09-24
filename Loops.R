# Loops

# Exercise: 
# create a function "analyze" whose input is the name of a dataset (eg "data/inflammation-01.csv" 
# and output a plot of mean inflammation per day) 

analyze <- function(filename){
  dat <- read.csv(filename, header= F)
  avg_day_inflammation <- apply(dat,2,mean)
  plot(avg_day_inflammation, main=filename)
  
}

dir("data/")

analyze("data/inflammation-01.csv")
analyze("data/inflammation-02.csv")


 for (i in c(1,3,5)){
  print (i,1)
}



inflammation_files <- c(
  "data/inflammation-01.csv",
  "data/inflammation-02.csv",
  "data/inflammation-03.csv",
  "data/inflammation-04.csv",
  "data/inflammation-05.csv"
)


for (filename in inflammation_files){
  analyze(filename)
  
}              

sum(x)

sum_x <- 0
 
   for(i in x){
       cat ("i:", i,"\n")
       cat ("sum_x:", sum_x, "\n")
       sum_x <- sum_x + i
    }


exponentiate <- function(x,y){
  result <- 1
  for(i in 1:y){
   result <- result * x
}
return (result)
}


product <- function(x,y){
  result <- 0
  for (i in 1:y){
    result <- result + x
  }
  return(result)
}



dat <- read.csv ("data/inflammation-01.csv", header=F)
patient_mean <- apply (dat,2,mean)


# takes mean of each column
patient_mean_function <-function(filename){
  #read file filename in to dataframe dat
  dat <- data.matrix (read.csv(filename, header=F))
  #dim(dat) is a large 2 vector c(row_number, col_number)
  rows_cols <- dim(dat)
  dat_cols <- rows_cols[2]
  means_day <- numeric(dat_cols)
  for (i in 1:dat_cols){
    means_day[i] <- mean(dat[i,])
  }
  plot (means_day,main = filename)
}
patient_mean_function("data/inflammation-01.csv")


