x1<-seq(0,1,length.out = 22) #generate vector w/ 22 equally spaced elements, length.out needed because positially "by" comes first
x2<-x1**3
x3 <- c(rep("M",length(x1)/2), rep("F",length(x1)/2))
dataframe <- data.frame(column1 = x1,column2 = x2, column3 = x3)
plot(dataframe[,1],dataframe[,2])
partial_df <-dataframe[dataframe[,3] == "F",] #selecting rows, so "," needed
plot(partial_df[,1],partial_df[,2])