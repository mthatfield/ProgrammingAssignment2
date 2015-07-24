## These functions take a matrix and cache its inverse. If the cacheSolve function is run again it checks
## to see if the inverse of the matrix is already defined. If not it calls makeCacheMatrix to solve the 
## inverse of the matrix


## This function takes a given matrix and caches its value along with its inverse

makeCacheMatrix <- function(x = matrix()) {
 message("creating cached matrix")
    inv <<- solve(x)
    mat <<- x
}


## This function takes a matrix and checks to see if it was the last matrix that was run in makeCacheMatrix.
## if so it returns that matrix's inverse. If not it calls makeCacheMatrix to compute the inverse.

cacheSolve <- function(x, ...) {
        
    if (exists("mat")==F){
        mat <- matrix()
    }
    if( !identical(x,mat)){
        makeCacheMatrix(x)
    }
    ## Return a matrix that is the inverse of 'x'
    return(inv)
    
}
