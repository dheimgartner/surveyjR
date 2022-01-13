// https://shiny.rstudio.com/articles/communicating-with-js.html

shinyjs.renderSurvey = function(params) {
  var defaultParams = {
    id_container : "surveyContainer",
    id_answers : "answers",
    survey_json: null,
    theme : "default"
  };
  params = shinyjs.getParams(params, defaultParams);
  
  Survey.StylesManager.applyTheme(params.theme);
  
  var surveyJSON = params.survey_json;
  
  function sendDataToServer(survey) {
    Shiny.setInputValue(params.id_answers, JSON.stringify(survey.data));
  }
  
  var id = $("#" + params.id_container);
  var survey = new Survey.Model(surveyJSON);
  id.Survey({
    model: survey,
    onComplete: sendDataToServer
  });
}