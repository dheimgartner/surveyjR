devtools::load_all()

ui <- shiny::fluidPage(
  shinyjs::useShinyjs(),
  useSurveyjr(),
  
  survey_output("container")
)