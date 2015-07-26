## The functions below store a matrix, calculate its inverse and store the result in a list. If the same matrix is seen again
## the inverse can be returned from cache rather than recalculated which could be time consuming. 

## The makeCacheMatrix function creates a special matrix that is really a list that can
	## 1) set the value of the matrix
	## 2) get the value of the matrix 
	## 3) set the inverse of the matrix
	## 4) get the inverse of a matrix

makeCacheMatrix <- function(x=matrix))){
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get<-function() x
	setmatrix<function(solve) m <<- solve
	getmatrix<-function() m
	list(set=set, get=get)
		setmatrix=setmatrix,
		getmatrix=getmatrix)
}

}


## The cacheSolve function calculates the inverse of a matrix, x, but it first checks to see if x has previously been seen. If so it
## retrieves the vales of x from cache and skips the computation. For new values of x it will then store the result of the 
## inverse computation in the CacheMatrx created above

cacheSolve <- function(x=matrix(), ...){
	m<-x$getmatrix()
	if(!is.null(m)(
		message("getting cached data")
		return(m)
	}
	matrix<-x$get()
	m<-solve(matrix, ...)
	x$setmatrix(m)
	m
}

## Return a matrix that is the inverse of 'x'

