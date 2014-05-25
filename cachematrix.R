## Put comments here that give an overall description of what your
## functions do

## There are situations in which the inverse of a matrix (that remains unchanged)
## is used a number of times in a program. To save computing and typing time, it is
## useful to calculate the inverse of the matrix once, and store its values to be 
## used when needed. The two functions below achieves this aim.


## Write a short comment describing this function

## The function takes a given matrix (or can create one), calculates its inverse and stores the value
## for possible future use

makeCacheMatrix<-function(x=matrix(),.....)){
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setinverse<-function(solve) m<<-solve
  getinverse<-function() m
  list(set=set, get=get,
       setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function

## This function calculates the inverse of the matrix created above, but it first checks,
## if the inverse has already been calculated or not (from above). If already calculated, then the
## the function retrieves the inverse from cache for next steps. If the inverse is not computed
## the function computes the inverse.

cacheSolve<-function(x){
  m<-x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return (m)
  }
  data<-x$get()
  m<-solve(data,....)
  x$setinverse(m)
  m
}
