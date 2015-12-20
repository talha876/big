library("XML")

library(httr)


fileurl <- GET( "https://www.daraz.pk/mobile-phones/")
 for( i in  1:29)
 {
   url <- paste(fileurl,i, sep = '')

doc <- htmlTreeParse(url,useInternal =TRUE )

title <- xpathSApply(doc,"//span[@class='name']", xmlValue)
price <- xpathApply(doc,"//span[@class='price -old  -no-special']", xmlValue)

title

dfrm <- data.frame(title=title)

write.table(dfrm, file="assgnment2_data.csv",
            append=TRUE,
            col.names = FALSE
            )
 }