#' Retrieve answers
#' 
#' Handles the answers passed from the `js$renderSurvey()` function (called in `render_survey()`).
#' 
#' @param answers from `js$renderSurvey()` internally assigned to `id_answers` in `render_survey()`. Pass as `input$id_answers`.
#'
#' @return
#' @export
get_answers <- function(answers) {
  answers <- jsonlite::fromJSON(answers)
}