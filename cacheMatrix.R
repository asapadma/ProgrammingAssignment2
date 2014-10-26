## This function creates a cache matrix
## This function creates a cache matrix for the given inputs

makecachematrix<- function(x= matrix(){
  m<- NULL
  set<- function(y){
    x<<- y
    m<<- NULL
  }
  get<- function()x
  setsolve<- function(solve)m<<- solve
  getsolve<- function()m
  list(set=set,get=get,
       setsolve=setsolve,
       getsolve=getsolve)
}
## This function creates a inverse of the cache matrix created
## in the previous function
cachesolve<- function(x,...){
  m<-xgetsolve()
  if(!is.null(m)){
    message("getting inverse of the matrix")
    return(m)
  }
  data<-x$get()
  m<- setsolve(m)
  m
}
