#Matrix inversion is usually a costly computation and 
#there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly 

## this function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 
  inv <- NULL
  set <- function(y) {
   x <<- y
   inv <<- NULL
}
 get <- function()x
setInverse <- funtion(solveMatix) inv <<- solveMatrix
getInverse <- function() inv
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## this function now will compute the inverse of the matrix that is returned by the function (makeCacheMatrix) above
## if the inverse is already calculated, then the cachesolve will retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse ()
  if(!is.null(inv)) {
    message("getting cached data")
    return (inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}


