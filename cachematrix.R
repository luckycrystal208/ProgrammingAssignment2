## cache the inverse of a given matrix

## initialize a matrix w/ a placeholder to keep the inverse of 'x'

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y){
        x <<- y
    }
    get <- function() x
    setinverse <- function(inverse) inverse <<- inverse
    getinverse <- function() inverse
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## calculate the inverse of the 'x' and cache in the matrix 'inverse'
cacheSolve <- function(x, ...) {
    inverse <-x$getinverse()
    if(!is.null(inverse)){
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data)
    x$setinverse(inverse)
    inverse
}
