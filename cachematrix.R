## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

#
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function. Setting the matrix & defining the matrix.
## Write a short comment describing this function. 
##Setting the matrix & defining the matrix.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Write a short comment describing this function. This function calculates the inverse of the matrix by calling the solve( ) function. 
## If the inverse is already calculated, then it prints the value from cache.
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
}
#
test <- makeCacheMatrix(matrix(1 : 4, 2, 2))
class(test)
test$get()

test$getInverse()

cacheSolve(test)

cacheSolve(test)
#getting cached data

test$getInverse()
