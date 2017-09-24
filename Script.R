#09-23-2017
x <- 2
x <- 2+2
x <-c(1,3,5)
x <- 1:5
unzip("data/r-novice-inflammation-data.zip")


my_data<- read.csv("data/inflammation-01.csv", header=F)
            
head(my_data) 
(row_cols <- dim(my_data))


my_data[1,1]
my_data[1,5]
my_data[y,1]
my_data[1:5,1]
my_row <- my_data[x,1]
my_data[c(1,3,5),c(1,3,5)]
my_data[c(1,2,3) , ]


my_data[,c("V1", "V2", "V3")]

col_17 <- my_data$V17

mean(col_17)
sd(col_17)
median(col_17)
mean(my_data[1:4,3])
summary(my_data[1:4,c(1,2,3)])

x <- 5:1
x < 3 
x <= 3
x[x < 3]
my_col <-my_data[,1]
my_data[my_col==0,2]
sub_col <- my_col[my_col== 0]
length(sub_col)

other_sub_col <- my_col[my_col !=0]
length(sub_col)
length(other_sub_col)


dim(my_data[, c(-1,-2,-3)])
x[-4]

my_data$x <- my_data$V1+my_data$V2+my_data$V30
dim(my_data)


col_V1 <- my_data$V1
col_V2 <- my_data$V2 #my_data[, "V2"]
my_data$x <- col_V1+col_V2

dim(my_data)
y <- c(1,2,3)
z <- c(2,3,4)
a <- y+z

x[1] <- 0
x[1:3] <-c(1,2,3)


