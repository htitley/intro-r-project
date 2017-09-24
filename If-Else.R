# If Else


num <- 3
if (num > 5){
  print("greater than 5")
} else {
  print ("try again!!")
}

num <- 53
if (num > 100){
  print("greater than 100")
}



# Exercise: write a function to return (0, -1, or 1 ) based on the sign of the integer. 
# call the function "sign"


sign <- function (x){
  if (x > 0){
    return (1)
  } 
  if (x < 0){
    return (-1)
  } 
  if (x==0){
    return(0)
  }
}


if ((1 > 0) & (-1 > 0)){
  print ("both parts are true")
} else{
  print ("at least one part is false")
}


if ((1 > 0) | (-1 > 0)){
  print ("at least one is true")
} else{
  print ("both are false")
}



if (1 > 0){
  if (-1 > 0){
    print("both are true")
  }else{
    print ("at least one is false")
  }
}else{
  print("At least one if false")
}
  
  

# Grabbing ODD numbers
n100 <- seq(1,100)
getodd <- function(v){
  return(v[v %% 2 == 1])
}


# Exercise: write a fucntion which takes 3 arugments 
# v - a vector of integers
# x - a number to check for even divisibility
# y - a second number to check for even divisibility
# output: show all numbers in "v" that are evenly divisible by both "x" and "y"
#Example: double_div(c(1,2,3,4), 2, 4) => [4])
# Use a loop for this


double_div <- function(v,x,y){
  for (e in v){
    if ((e %% x == 0) & (e %% y == 0)){
      print (e)
    }
  }
}



double_div2 <- function(v,x,y){
  return(v[(v %% x == 0) & (v %% y == 0)])
}
