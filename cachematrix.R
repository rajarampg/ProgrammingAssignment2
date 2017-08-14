## Put comments here that give an overall description of what your
## functions do

## A function to create a special "matrix", which contains a list of functions to
#get & set the values of matrix
#get & set the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  i <-NULL
  set <- function(y){
    x<<-y
    i<<-NULL
  }
  
  get <- function()x
  setInverse<- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get=get, setInverse=setInverse, getInverse=getInverse)
  
}


## Fuction that calculates the inverse of the special matrix, 
#checks for availablity before calculation if available retrieves from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i<- solve(data)
  x$setInverse(i)
  i
}
