## Maulid Hussein Bwabo
## Data Science Specialization
## Second Module 
#  Programming Assignment 2: Lexical Scoping
#`makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse
#set the working directory 
setwd("C:/Users/bwabo/OneDrive/Desktop/Paper 4/ProgrammingAssignment2")
#Browsing the functions 
?cacheMethod
#Make a CacheMatric
makeCacheMatrix = function(x = matrix()) {
  inv = NULL
  set = function(y) {
    x <<- y
    inv <<- NULL
  }
  get = function() x
  setInverse = function(inverse) inv <<- inverse
  getInverse = function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

#CacheSolve functions:This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
cacheSolve = function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv = x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat = x$get()
  inv = solve(mat, ...)
  x$setInverse(inv)
  inv
}
# Recalling the functions 
cacheSolve
makeCacheMatrix
# Analyzing the Authenticity of each exhausted functions above
#Caching the Inverse of a Matrix
my_matrix = makeCacheMatrix(matrix(1:6, 2, 2))
my_matrix$get()
my_matrix$getInverse()
cacheSolve(my_matrix)
my_matrix$getInverse()
#
my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))
my_matrix$get()
cacheSolve(my_matrix)
my_matrix$getInverse()



