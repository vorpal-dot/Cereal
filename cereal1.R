library(ggplot2)
install.packages("ggplot2")

head(Cereals, 9)
summary(Cereals)
Sys.time()

  attach(Cereals)

  t(t(names(Cereals)))
  
  mean(Cereals$calories)
  sd(Cereals$calories)
  min(Cereals$calories)
  max(Cereals$calories)    
  median(Cereals$calories)  
  length(Cereals$calories)  
  sum(is.na(Cereals$calories)) 
  

sapply(Cereals[,-c[6:8], mean, na.rm=TRUE)

Cereal.Sum<-data.frame(mean=sapply(Cereals[,4:16],mean,na.rm=TRUE)
                 ,median=sapply(Cereals[,4:16],median,na.rm=TRUE)
                 ,min=sapply(Cereals[,4:16],min,na.rm=TRUE)
                 ,max=sapply(Cereals[,4:16], max,na.rm=TRUE)
                 ,sd=sapply(Cereals[,4:16], sd,na.rm=TRUE)
                 ,miss.val=sapply(Cereals[,4:16],function(x) sum(length(which(is.na(x))))) )

                 
                 
                 
                 colnames(Cereal.Sum)=c("Mean","Median","Min","Max","Standard Deviation", "Missing Value")

Cereal.Sum

view(Cereal.Sum)

hist(Cereals$calories, xlab = "Calories Hist")
hist(Cereals$protein, xlab = "Protein Hist")
hist(Cereals$fat, xlab = "Fat Hist")
hist(Cereals$sodium, xlab = "Sodium Hist")
hist(Cereals$fiber, xlab = "Fiber Hist")
hist(Cereals$carbo, xlab = "Carbo Hist")
hist(Cereals$sugars, xlab = "Sugar Hist")
hist(Cereals$potass, xlab = "Potas Hist")
hist(Cereals$vitamins, xlab =  "Vitamins Hist")
hist(Cereals$shelf, xlab =  "Shelf Hist")
hist(Cereals$weight, xlab = "Weight Hist")
hist(Cereals$cups, xlab = "Cups Hist")
hist(Cereals$rating, xlab = "Rating Hist")



boxplot(sugars~type,data=Cereals,main="Cold vs. Hot Cereals",
        xlab="Type of Cereals",ylab="Sugar",
        col="blue",medcol="goldenrod1",boxlty=0,border="black",
        whisklty=3,staplelwd=4,outpch=13,outcex=1,outcol="darkslateblue")











