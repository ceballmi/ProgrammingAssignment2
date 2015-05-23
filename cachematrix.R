## This is the answer for R Programming course: 2nd assignment.

## First, according with example, this function creates a special
## object matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}



## This function returns the inverse of a matrix. If inverse was already
##calculated, returns previous computed data.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if(!is.null(m)) {
       message ("getting cached data")
       return(m)
    }
    data <-x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
}
