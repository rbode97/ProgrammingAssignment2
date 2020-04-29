makeCacheMatrix <- function(m = matrix()) 
  ## inverse property 
  i <- NULL
  ## Set matrix 
  set <- function(matrix ){
    m <<- matrix 
    i <<- NULL
  }
  
  ##get matrix 
  get <- function(){
    ## return matrix m
  }
  
  ## get inverse matrix
  
  getInvers <- function() { i}
  
  ## create function to compute inverse
  cacheSolve <- function(x, ...)
    
    ## return inverse if its already set 
    if(!is.null(m)) {message("getting cached data")
      return(m)
    }
  
  ##get matrix from object
  data <- x$get()
  
  ## calculate inverse
  
  m <- solve(data) %*% data
  
  ## set object's inverse
  x$setInverse (m)
  