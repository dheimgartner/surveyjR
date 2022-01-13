devtools::load_all()

server <- function(input, output, session) {
  render_survey(id_container = "container",
                id_answers = "answers",
                survey_json = SURVEY$cancellation)
  
  shiny::observeEvent(input$answers, {
    answers <- get_answers(input$answers)
  })
  
}