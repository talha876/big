library(sqldf)


data1 <- read.csv(file="assgnment2_data.csv",
                     header = TRUE, sep = ",",
            )
data2 <- read.csv(file="brand.csv",
                  header = TRUE, sep = ",",
)
data2[2]
iphone <- "iphone"
samsumg <- "Galaxy"
qmobile <- "Qmobile"
nokia <-"nokia"
motorolla <-"motorolla"
htc <- "htc"

#merg <- sql = "select * from data where title like '%phone%' ";

mer <- sqldf(paste("select *  from data1 where title like '%",motorolla,"%'", sep = ""))
print(mer)
