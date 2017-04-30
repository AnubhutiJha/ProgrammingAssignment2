## The two function creates Special matrix and computes inverse
## functions do

## The function creates a matrix that can cache its Inverse

makeCacheMatrix <- function(x = matrix()){
    i<- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get<-function() x
    setinverse <- function(inverse) i<<-inverse
    getinverse<-function()i
    list(set=set,
         get=get,
         setinverse=setinverse,
         getinverse=getinverse)
}


## The function computes the Inverse of the Matrix

cacheSolve <- function(x, ...) {
          i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached matrix")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
