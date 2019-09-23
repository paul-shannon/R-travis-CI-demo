#' @importFrom methods new
#' @import BiocGenerics
#'
#' @title CIDemo
#------------------------------------------------------------------------------------------------------------------------
#' @name CIDemo-class
#' @rdname CIDemo-class
#' @aliases CIDemo
#'
## @import methods

.CIDemo <- setClass ("CIDemo",
                        representation = representation(
                           projectName="character"
                           )
                         )

#------------------------------------------------------------------------------------------------------------------------
setGeneric('getProjectName',  signature='obj', function(obj) standardGeneric('getProjectName'))
setGeneric('addTwo',          signature='obj', function(obj, x) standardGeneric('addTwo'))
#------------------------------------------------------------------------------------------------------------------------
#' Create an object CIDemo
#'
#' @description
#' A very simple S4 class with which to explore Travis-CI
#'
#' @rdname CIDemo-class
#'
#' @param projectName A character string
#'
#' @return An object of the CIDemo class
#'
#' @export
#'
#'
CIDemo <- function(projectName)
{
   .CIDemo(projectName=projectName)

} # ctor
#------------------------------------------------------------------------------------------------------------------------
#' get the project name - to be set by derived classes
#'
#' @rdname getProjectName
#' @aliases getProjectName
#'
#' @param obj An object of class CIDemo
#'
#' @export

setMethod('getProjectName', 'CIDemo',

   function(obj) {
      obj@projectName
      })

#------------------------------------------------------------------------------------------------------------------------
#' add two to the supplied integer
#'
#' @rdname addTwo
#' @aliases addTwo
#'
#' @param obj An object of class CIDemo
#' @param x numeric
#'
#' @exampls
#'   ciDemo <- CIDemo("foo")
#'   addTwo(40)
#'
#' @export

setMethod('addTwo', 'CIDemo',

   function(obj, x) {
      x + 2
      })

#------------------------------------------------------------------------------------------------------------------------
