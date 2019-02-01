## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mtx = matrix()) {
  
  b <- NULL
  set <- function(matrix){
    mtx <<- matrix
    b <<- NULL
  } ## setting matrix
  get <- function() {
    mtx 
  } ## return matrix
  setInverse <- function(inverse) {
    b <<- inverse
  }
  getInverse <- function() {
    b
  } ## return inverse 
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mtx <- x$getInverse()
  if(!is.null(mtx)) {
    message("getting cached data")
    return(mtx)
  }
  data <- x$get()
  mtx <- solve(data) %*% data
  x$setInverse(mtx) 
  ## returning matrix
  mtx
}

