## Put comments here that give an overall description of what your
## functions do


## Esta función crea un objeto especial de" matriz " que puede almacenar en caché su inverso
##lo primero que hace es establecer la matriz, luego obtener los valores de la matriz
## Posteriormente establece el valor de la matriz inversa, y luego obtiene los valores de la matriz inversa

makeCacheMatrix <- function(x = matrix()) {
  m  <-  NULL
  set  <-  function ( y ) {
    x  <<-  y
    m  <<-  NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}



## Esta función calcula la inversa de la "matriz" especial devuelta por makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## devuelve la matriz inversa de x
  m  <-  x $ getmatrixinverse ()
  if ( ! is.null ( m )) {
    mensaje ( " obteniendo la matriz en caché inversa " )
    volver ( m )
  }
  matriz  <-  x $ get ()
  m  <- resolver ( matriz )
  x $ setmatrixinverse ( m )
  metro
}


