#' enaAll --- Conduct all ecological network analyses
#' INPUT = network object
#' OUTPUT = list of analytical output
#' 
#' M. Lau | May 2013
#' ---------------------------------------------------







#' enaAll --- Conduct all ecological network analyses INPUT = network object
#' OUTPUT = list of analytical output
#' 
#' M. Lau | May 2013 --------------------------------------------------- enaAll
#' --- Conduct all ecological network analyses INPUT = network object OUTPUT =
#' list of analytical output
#' 
#' M. Lau | May 2013 ---------------------------------------------------
#' Conduct All Major ENA
#' 
#' Conducts all major ENA with default settings and returns the output as a
#' named list.
#' 
#' @param x A network object.
#' @return \item{ascendency}{enaAscendency} \item{control}{enaControl}
#' \item{environ}{enaEnviron} \item{flow}{enaFlow} \item{mti}{enaMTI}
#' \item{storage}{enaStorage} \item{structure}{enaStructure}
#' \item{utility}{enaUtility with eigen.check=FALSE}
#' @author Matthew K. Lau Stuart R. Borrett
#' @seealso
#' \code{\link{enaAscendency},\link{enaControl},\link{enaEnviron},\link{enaFlow},\link{enaMTI},\link{enaStorage},\link{enaUtility}}
#' @examples
#' 
#' 
#' 
#' data(troModels)
#' output = enaAll(troModels[[6]])
#' names(output)
#' 
#' 
#' 
#' @export enaAll
enaAll <- function(x = 'network object'){
  out <- list(ascendency = enaAscendency(x),
              control = enaControl(x),
              environ = enaEnviron(x),
              flow = enaFlow(x),
              mti = enaMTI(x),
              storage = enaStorage(x),
              structure = enaStructure(x),
              utility = enaUtility(x,eigen.check=FALSE))
  return(out)
}
