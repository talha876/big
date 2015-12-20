library(XML)
library(sqldf)
library(MASS)


data1 <- read.csv(file="assgnment2_data.csv",
                  header = TRUE, sep = ",",
)
data2 <- read.csv(file="olx22.csv",
                  header = TRUE, sep = ",",
)
datass <- "iphone"


merged.pima <- merge(x=data2, y=data1[1],
               by.x="title", by.y="title", all=TRUE
                
                )
print(merged.pima)

dfrm <- data.frame(merged.pima)
write.table(dfrm, file="merging44444.csv",
            append=TRUE,
            col.names = FALSE,
            sep = ',')