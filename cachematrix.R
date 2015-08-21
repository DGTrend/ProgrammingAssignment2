## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 ms<-NULL;
 set <- function(y) {
     x <<- y
     ms <<- NULL
 }
 get <- function() x
 setSolve <- function(solve) ms <<- solve
 getSolve <- function() ms
 list(set = set, get = get,
      setSolve = setSolve,
      getSolve = getSolve)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ms<-x$getSolve()
        if (!is.null(ms)) {print("getting from cache")
            return(ms)
        }
        data<-x$get()
        ms<-solve(data,...)
        x$setSolve(ms)
        ms
        


}
