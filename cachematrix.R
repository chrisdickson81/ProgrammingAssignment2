## Functions to use lazy evaluation by R to create inverse of a matrix

## Creates the functions to store and return the matrix
makeCacheMatrix <- function( x = matrix() ) 
{
  
  m <- NULL
  ## Function to set the matrix
  set <- function( y ) 
    {
    x <<- y
    m <<- NULL
    }
  ## Function the get the matrix
  get <- function() 
    {
    ## Return the matrix
    x
    }
  ## Function to calculate the inverse of the matrix
  setMatrix <- function(solve) 
    {
    m <<- solve
    }
  ## Function to get the inverse of the matrix
  getMatrix <- function() 
    {
    ## Return the inverse property
    m
    }
  ## Return a list of the function created
  list(set = set, get = get,
       setMatrix = setMatrix,
       getMatrix = getMatrix)
}


## Compute the inverse of the special matrix returned by "makeCacheMatrix" above
## If inverse is already set then simply return the matrix (lines 40-44)
cacheSolve <- function(x, ...) 
{
  
  ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix()
  
  ## Just return the inverse if its already set
  if( !is.null(m) ) 
    {
    message("getting cached data")
    return(m)
    }
  
  ## Get the matrix from our object
  matrix <- x$get()
  
  ## Calculate the inverse using solve function
  m <- solve(data)
  
  ## Set the inverse to the object
  x$setMatrix(m)
  
  ## Return the matrix
  m
}