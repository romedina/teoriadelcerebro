install.packages("Rtsne")
library(Rtsne)


## calling the installed package
train<- read.csv("train.csv") ## Choose the train.csv file downloaded from the link above  
#library(Rtsne)
## Curating the database for analysis with both t-SNE and PCA
Labels<-train$label
train$label<-as.factor(train$label)
## for plotting
colors = rainbow(length(unique(train$label)))
names(colors) = unique(train$label)

## Executing the algorithm on curated data
tsne <- Rtsne(train[,-1], dims = 2, perplexity=30, verbose=TRUE, max_iter = 500)
#exeTimeTsne<- system.time(Rtsne(train[,-1], dims = 2, perplexity=30, verbose=TRUE, max_iter = 500))

## Plotting
plot(tsne$Y, t='n', main="tsne")
text(tsne$Y, labels=train$label, col=colors[train$label])

#pca

pca_mnist = princomp(train[,-1])$scores[,1:2]
plot(pca_mnist, t='n')
text(pca_mnist, labels=train$label, col=colors[train$label])
