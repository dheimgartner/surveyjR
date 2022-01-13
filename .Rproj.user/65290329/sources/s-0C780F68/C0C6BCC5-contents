#' Register Dependencies
#' 
#' Dependencies: package{shinyjs} and SurveyJS framework. Adds resource path to internal js functions.
#'
#' @param version survey-jquery version.
#' @param theme see `useSurveyjr()` for a description.
#'
#' @return `htmlDependeny` list
#' @export
#' @keywords internal
registerDependencies <- function(version, theme) {
  
  if (!("shinyjs" %in% names(shiny::resourcePaths()))) {
    stop("Register shinyjs::useShinyjs() in your UI")
  }
  
  shiny::addResourcePath("js", system.file("js", package = "surveyjR"))
  
  src <- paste0("https://unpkg.com/survey-jquery", "@", version, "/")
  script <- "survey.jquery.min.js"
  
  if (theme == "bootstrap") {
    stylesheet <- NULL
  } else {
    stylesheet <- paste0(theme, ".css")
  }
  
  
  htmltools::htmlDependency(name = "surveyJS",
                            version = version,
                            src = c(href = src),
                            script = script,
                            stylesheet = stylesheet)
}
