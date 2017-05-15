################################################################################
# S3 Methods                                                                   #
################################################################################
# Below are getters for the various types of celda models.                     #
# Concrete implementations of these functions are in their corresponding model #
# files (e.g. getZ.celda_C is in celda_C.R).                                   #
#                                                                              #
# TODO:                                                                        #
#        * Collapse ROxygen documentation into single page for these functions #
#        * Consider moving model specific implementations to their             #
#          corresponding files                                                 #
#        * Can reduce redundancy for celda_C / celda_G getters by renaming the #
#          fields on their respective return objects to match.                 #  
################################################################################



################################################################################
# Generics
################################################################################

#' Get run parameters for a celda run.
#'
#' @param celda.res A celda_list object, as returned from celda()
#' @export
runParams = function(celda.list) {
  return(celda.list$run.params)
}


#' Get the random seed for a given celda model.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
seed = function(celda.mod) {
  return(celda.mod$seed)
}


#' Get the complete log likelihood for a given celda model.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
completeLogLikelihood = function(celda.mod) {
  return(celda.mod$completeLogLik)
}


#' Get the log likelihood from the final iteration of Gibbs sampling
#' for a given celda model.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
finalLogLikelihood = function(celda.mod) {
  return(celda.mod$finalLogLik)
}


#' Get the final gene / cell / gene & cell cluster assignments generated during
#' a celda run, dependent on the model provided.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
finalClusterAssignment = function(celda.mod) {
  UseMethod("finalClusterAssignment", celda.mod)
}


#' Get the complete history of gene / cell / gene & cell cluster assignments 
#' generated during a celda run, dependent on the model provided.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
completeClusterHistory = function(celda.mod) {
  UseMethod("completeClusterHistory", celda.mod)
}


#' Get the probability of the cluster assignments generated during a celda run.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
clusterProbabilities = function(celda.mod) {
  UseMethod("clusterProbabilities", celda.mod)
}


#' Get the K value used for each chain in a celda run.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
getK = function(celda.mod) {
  UseMethod("getK", celda.mod)
}


#' Get the L value used for each chain in a celda run.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @export
getL = function(celda.mod) {
  UseMethod("getL", celda.mod)
}


#' Render a stylable heatmap of count data based on celda clustering results.
#'
#' @param celda.mod A celda model object (of class "celda_C", "celda_G" or "celda_CG")
#' @param counts the counts matrix 
#' @param z A numeric vector of cluster assignments for cell. Resolved automatically from celda object when available.
#' @param y A numeric vector of cluster assignments for gene. Resolved automatically from celda object when available.
#' @param scale.log specify the transformation type of the matrix for (semi-)heatmap, can be "log","row"(z-acore by row),"col"(z-score by column), etc. #To be completed
#' @param scale.row specify the transformation type of the matrix for (semi-)heatmap, can be "log","row"(z-acore by row),"col"(z-score by column), etc. #To be completed
#' @param z.trim two element vector to specify the lower and upper cutoff of the z-score normalization result by default it is set to NULL so no trimming will be done.
#' @param scale_fun specify the function for scaling 
#' @param cluster.row boolean values determining if rows should be clustered
#' @param cluster.column boolean values determining if columns should be clustered
#' @export 
celda_heatmap <- function(celda.mod, counts, ...) {
  UseMethod("celda_heatmap", celda.mod)
}