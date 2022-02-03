#' Register internal JavaScript functions
#'
#' @return `shinyjs::extendShinyjs()`
#' @export
#' @keywords internal
registerJs <- function() {
  
  if (!("shinyjs" %in% names(shiny::resourcePaths()))) {
    stop("Register shinyjs::useShinyjs() in your UI")
  }
  
  shinyjs::extendShinyjs(script = "surveyjR_js/renderSurvey.js", functions = c("renderSurvey"))
}