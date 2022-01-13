#' Render the Survey
#' 
#' Main magic happens in `js$renderSurvey()` JavaScript function.
#'
#' @param id_container id which has to match id from `survey_output()`.
#' @param id_answers will write answers internally to `input$id_answers`.
#' @param survey_json json object imported with `import_survey()`.
#'
#' @return
#' @export
render_survey <- function(id_container, id_answers, survey_json) {
  
  theme <- get("theme", envir = as.environment(".surveyjR"))
  
  shinyjs::js$renderSurvey(id_container = id_container, 
                           id_answers = id_answers, 
                           survey_json = survey_json, 
                           theme = theme)
}