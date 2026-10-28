sales_data <- read.csv(file.choose())
print(sales_data)
str(sales_data)
summary(sales_data)
colSums(is.na(sales_data))

#bar plot
barplot(sales_data$Sales,names.arg=sales_data$Month,
        col="skyblue",main ="Monthly Sales Data",
        xlab = "Months",ylab = "Sales",border="black")

#line plot
plot(sales_data$Sales,type="o",col="blue",pch=16,
     xaxt="n",main="Monthly Sales",xlab="Month",ylab="Sales")
axis(1,at=1:nrow(sales_data),labels=sales_data$Month)

#scatter plot
plot(sales_data$Sales,sales_data$Profit,
     main="Sales vs Profit",xlab="Sales",ylab="Profit",col="red",
     pch=19,cex=1.5)
abline(lm(Profit~Sales,data=sales_data),col="blue",lwd=2)
cor(sales_data$Sales,sales_data$Profit)

#histogram
hist(sales_data$Sales,main="Distribution of Sales",
     xlab="Sales",ylab="Frequency",col="lightgreen",
     border="black",breaks=5)

#box plot
boxplot(sales_data$Sales,main="Box Plot of Sales",ylab="Sales",
        col="orange",border="black",horizontal=FALSE)

#comparative Bar plot
comparison_data <- rbind(sales_data$Sales,sales_data$Profit)
barplot(
  comparison_data,beside=TRUE,names.arg=sales_data$Month,
  col=c("skyblue","orange"),main="Monthly Sales and Profit",
  xlab = "Month",ylab ="Amount")
legend("topleft",legend=c("Sales","Profit"),
       fill=c("skyblue","orange"))