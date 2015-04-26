## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  sol <- NULL
  set <- function(y) {
    x <<- y
    sol <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) sol <<- solve
  getsolve <- function() sol
  list(set = set, get = get,
       setmean = setsolve,
       getmean = getsolve)
}

##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above 

cacheSolve <- function(x, ...) {
    sol <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(sol)
    }
    data <- x$get()
    sol <- solve(data, ...)
    x$setsolve(sol)
    sol
}
