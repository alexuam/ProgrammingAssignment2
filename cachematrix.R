
# makeCacheMatrix returns a list with a function that
# sets and gets the value of the matrix.
# sets and gets the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
         inv <-NULL
         set <-function(y) {
         x <<-y
         
          inv <<-NULL
  
        }
get <-function() x
setinverse <-function(inverse)inv <<-inverse
getinverse <-function()inv
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}



# This function returns the inverse of a matrix assuming that is invertible.
# The first step is to check if the inverse is already computed, to skip it. If not
# it sets the value in the cache with setinverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <-x$getinverse()
         
        if(!is.null(inv)){
                message("obtaining cached data.")
                return(inv)
        }
        
        data <-x$get()
        inv <-solve(data)
        x$setinverse(inv)
        inv
}
