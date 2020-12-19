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
    setinverse <- function(mean) r <<- inverse
    getinverse <- function() r
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
  

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
