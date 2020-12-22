## These functions are going to be used to complete RProgramming Week 3, Programming Project 2
## We were tasked with creating a function that produces a matrix
## and then follow up with a function that will cache the inverse of the means.

## Write a short comment describing this function
# This will create the matrix object to hold the cached inverse

makeCacheMatrix <- function(x = matrix()) {
    z <- NULL # place holder for value
    set <- function(y) { # record the value has changed
        x <<- y
        z <<- NULL
    }
    get <- function() x # return matrix
    setinverse <- function(inverse) z <<- inverse
    getinverse <- function() z
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
# Return a matrix with the inverse of x
# Stores output and returns inverse

cacheSolve <- function(x, ...) {
    
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv ## Return a matrix that is the inverse of 'x'
}
