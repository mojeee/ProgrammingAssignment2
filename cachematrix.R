## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      #set the inverse default value
      r <- NULL
      # it will be used for setting nec variable to matrix and reset inverse
    set <- function(y) {
      x <<- y
      r <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) r <<- inverse
    getinverse <- function() r
    # return function as a list
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  r <- x$getinverse()
  if(!is.null(r)) {
    message("getting cached data")
    return(r)
  }
  data <- x$get()
  # inverse of X will be calculated if r doesn't have a value
  r <- solve(data, ...)
  x$setinverse(r)
  r
  
  
  
}
