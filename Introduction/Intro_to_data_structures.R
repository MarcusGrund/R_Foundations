# Data structures ---------------------------------------------------------

# vector ------------------------------------------------------------------
#holding single data types
#in one dimension
myvector <- c(8, 6, 9, 10, 5)
myvector[1]

# matrix ------------------------------------------------------------------
#having two dimensions, combination of vectors having the same type
#columns holding the vectors byrow=False (default)
#rows holding the vectors byrow=TRUE
mymatrix <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE, 
                   dimnames = list(c("row1", "row2"), 
                                   c("C.1", "C.2", "C.3")))
#mymatrix[rows,columns]
mymatrix[2,3]
mymatrix[,c(2)]
mymatrix[1:2,]

mybigmatrix = matrix(c(seq(from=-98,to=100,by=2)), nrow = 10, ncol = 10)
#get mean of all columns
apply(mybigmatrix,MARGIN = 2,mean)
#get sum of all rows
apply(mybigmatrix,MARGIN = 1,sum)
#custom function
apply(mybigmatrix,1,function(x) mean(x[x>=0]))


# list --------------------------------------------------------------------
#holding multiple data types
#in one dimension
mysimplelist = list("A", 3, TRUE)
mylist <- list(name="Fred", wife="Mary", myvector)
mylist$name