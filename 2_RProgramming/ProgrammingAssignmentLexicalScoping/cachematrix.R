## This function will store the matrix and its inverse
## in a cache. You can set the matrix and its inverse
## and get the matrix and its inverse using the relevant
# set and get commands

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {
    x
  }
  setInv <- function(inverse) {
    inv <<- inverse
  }
  getInv <- function() {
    inv
  }
  list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## This function will compute the inverse of the matrix
## and work with the caching function above. If a cache 
## of an inverse of the matrix exists, it will return the 
## cache. Otherwise, it'll solve the inverse and cache 
## the result

cacheSolve <- function(x, ...) {
  i <- x$getInv()
  if (!is.null(i)) {
    print("returning cached data")
    return(i)
  }
  matrix <- x$get()
  i <- solve(matrix,...)
  x$setInv(i)
  i
}
