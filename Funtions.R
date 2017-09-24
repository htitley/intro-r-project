# Functions in R
# heather titley


fahr_to_kelvin <- function(temp){
  kelvin <- 273.15 + ((temp - 32) * (5/9))
  return(kelvin)
}


#kelvin to celsius
kelvin_to_celsius <- function(t){
     celsius <- t - 273.15
     return(celsius)
  }

#Farenheit -> Celsius
fahr_to_celsius <- function(temp) {
  kelvin <- fahr_to_kelvin(temp)
  celsius <- kelvin_to_celsius(kelvin)
  return(celsius)
}


#Exercise

# Define function "fence" which takes 2 vectors and returns the 2nd vector concactenated to the first

fence <- function(first, second){
     concat <- c(second, first)
  return(concat)
}

test_vec1 <- c("Heather", "is", "Awesome")
test_vec2 <- c(12,15,32,3)


input_1 <-20

mySum <- function(input_1, input_2 = 20){
  print(input_1)
  print(input_2)
  output <- input_1 + input_2
  return(output)

}


# Function to center my data
# desired - value to center on 
center <- function(data, desired){
  # return a new vector containing original data centered around the desired value
  # Example : center(c(1,2,3), 0) => c(-1,0,1)
 new_data <- (data - mean(data)) + desired
  return(new_data)
}

dat <- read.csv("data/inflammation-01.csv", header = F)
centered <- center(dat[,4], 0)


#  -----  Apply Functions -----
patient1 <- dat[1,]

avg_day_inflammation <- apply(dat, 2, mean)
max_day_inflammation <- apply(dat, 2, max)
min_day_inflammation <- apply(dat, 2, min)


# Exercise: 
# create a function "analyze" whose input is the name of a dataset (eg "data/inflammation-01.csv" 
# and output a plot of mean inflammation per day) 

 analyze <- function(filename){
     dat <- read.csv(filename, header= F)
     avg_day_inflammation <- apply(dat,2,mean)
     plot(avg_day_inflammation)
     
 }

 
