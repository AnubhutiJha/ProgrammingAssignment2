## The two function creates Special matrix and computes inverse
## functions do

## The function creates a matrix that can cache its Inverse

makeCacheMatrix <- function(x = matrix()){
    i<- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get<-function() a
    setinverse <- function(inverse) i<<-inverse
    getinverse<-function()i
    list(set=set,
         get=get,
         setinverse=setinverse,
         getinverse=getinverse)
}


## The function computes the Inverse of the Matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
