## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(A = matrix()) {
M<<-NULL
set<-function(B){
A<<-B
M<<-NULL
}
get<-function(){A}
setInverse<-function(I){M<<-I}
getInverse<-function(){M}
list(set=set,
     get=get,
     setInverse=setInverse,
     getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(A, ...) {
M<-A$getInverse()
if(!isnull(M)){
message("getting cached matrix")
return(M)
}
X=A$get()
M<-solve(X,...)
A$setInverse(M)
M
        ## Return a matrix that is the inverse of 'x'
}
