## Have used a series of sub-routines to specify each argument

makeCacheMatrix <- function(x = matrix()) {

## Begin by specifying existing inverse situation
	inverse <- NULL

## Outline matrix properties and variable
	setMatrix <- function(matrix=matrix()){
	x <<- matrix
}
## Call matrix
	getMatrix <- function()x

## Describe inverse
	setInverse <- function(inverseMatrix=matrix()){
	inverse <<- inverseMatrix
}
## Call inverse
	getInverse <- function()inverse
	list(get=getMatrix, set=setMatrix, getI=getInverse, setI=setInverse)
}


## Write a short comment describing this function

	cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'

## Does variable already exist? Has it been computed already?
	if(!exists(x$getI())){

## If it does not exist advise user accordingly
	print("Variable not found...calculating")

## Calculate inverse
	xSetI(solve(x$get()))

## If variable already exists
	}else {print("Variable already calculated and in cache.")

	x$getI()
}
