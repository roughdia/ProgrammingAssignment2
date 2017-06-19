## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  setmatrix <- function(y){
    x <<- y
    i <<- NULL
  }
  getmatrix <- function() x
  
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(setmatrix = setmatrix, 
       getmatrix = getmatrix,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$getmatrix()
  i <- solve(data)
  x$setinverse(i)
  i
}


