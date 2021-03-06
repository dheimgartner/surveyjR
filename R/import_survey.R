#' Load json file
#' 
#' Leverage the survey creator here \url{https://surveyjs.io/create-survey}.
#'
#' @param path Path to json file containing the survey structure and flow.
#'
#' @return
#' @export
import_survey <- function(path) {
  
  survey_json <- jsonlite::read_json(path)
  survey_json <- jsonlite::toJSON(survey_json, auto_unbox = TRUE, pretty = TRUE)
  
  if (!jsonlite::validate(survey_json)) stop("Object does not contain valid json!")
  
  
  survey_json
}