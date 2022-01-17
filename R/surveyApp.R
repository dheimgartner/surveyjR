#' Example app
#'
#' @param bootswatch character; one of bslib::bootswatch_themes().
#' @param survey one of names(surveyjR::SURVEY).
#' @param survey_imported allows you to test a survey created by you.
#'
#' @return
#' @export
#' @examples
#' if (interactive()) {
#'     surveyApp("sandstone", "patient")
#' }
surveyApp <- function(bootswatch = "sandstone", survey = c("cancellation", "market_fit", "patient"), survey_imported = NULL) {
  
  if (is.null(survey_imported)) {
    survey <- match.arg(survey, several.ok = FALSE)
    survey <- SURVEY[[survey]]
  } else {
    ## import survey.json with surveyjR::import_survey()
    survey <- survey_imported
  }
  
  ui <- shiny::fluidPage(
    ## surveyjR works nicely together with bootswatch themes
    theme = bslib::bs_theme(bootswatch = bootswatch),
    ## shinyjs needs to be registered
    shinyjs::useShinyjs(),
    ## alternatively, a theme can be chosen in useSurveyjr
    useSurveyjr(),
    
    survey_output("container")
  )
  
  
  
  server <- function(input, output, session) {
    ## id_answers will write the answers to input$id_answers
    render_survey(id_container = "container",
                  id_answers = "answers",
                  survey_json = survey)
    
    shiny::observeEvent(input$answers, {
      ## pass input$id_answers to get_answers
      answers <<- get_answers(input$answers)
      ## reformat, send to DB and potentially redirect...
    })
    
  }
  
  
  
  shiny::shinyApp(ui, server)
  
}
