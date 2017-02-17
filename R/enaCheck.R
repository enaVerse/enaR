#' ### M.K. Lau | 17February2017
#' ------------------------------------

#' enaCheck --- Model analysis to improve inference
#' M.K. Lau | 17February2017  ------------------------------------
#' 
#' 
#' Perform a series of tests of a given model to detect 
#' potential issues that could lead to misleading analyses.
#' 
#' 
#' @param x A network object.
#' @param tol The threshold for balance in percent difference between input and
#' outputs.
#' @param more LOGICAL: should more detailed results be returned?
#' @param zero.na LOGICAL: should NA values be changed to zeros?
#' @return Returns a logical value stating if the model is within acceptable
#' limits of balance (TRUE) or if it is not (FALSE).
#' @author Matthew K. Lau Stuart R. Borrett
#' @seealso \code{\link{ssCheck}}
#' @examples
#' data(oyster)
#' enaCheck(oyster)
#' 
#' @import network
#' @export enaCheck
enaCheck <- function(x, tol = 5, more = FALSE, zero.na = TRUE){
                                        #Check for network class object
  if (class(x) != 'network'){warning('x is not a network class object')}
  check.bal <- ssCheck(x, tol = tol, more = more, zero.na = TRUE)
  
  ### enaAscendency

    if (any(is.na(x%v%'export'))){
        warning('Export data is absent from the model.')
    }
    if(any(is.na(x%v%'respiration'))){
        warning('Respiration data is absent from the model.')
   }

## enaControl.R
## balance warning stops

## enaEnviron.R
## balance warning stops

## enaFlow.R
## balance warning stops

## enaMTI.R
  warning('Model is missing respiration. Output is NA.')

## enaStorage.R
## storage warning stops
  warning('This function requires quantified storage values.')

## enaStructure.R

## enaTroAgg.R

## enaUtility.R
## balance warning stops
## storage warning stops
  warning('This function requires quantified storage values.')
  warning('Model is not balanced')

## TES.R
## balance check stops

## TET.R
## balance check stops

## get.ns.R
## balance stops

## netOrder.R
  if(identical(order,1:N)==TRUE) {warning('Network meets default conditions, no changes made')}

## pack.R
  warning('Missing or NA resipiration/export values.')
  warning(paste('Missing model components:',missing[1],sep=' '))

## scc.R
  if (class(A) != 'matrix'){warning('A is not a matrix class object')}



}
