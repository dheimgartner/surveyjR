devtools::load_all()

cancellation <- import_survey("./data-raw/survey_cancellation.json")
market_fit <- import_survey("./data-raw/survey_market_fit.json")
patient <- import_survey("./data-raw/survey_patient.json")

SURVEY <- list(cancellation = cancellation, market_fit = market_fit, patient = patient)

usethis::use_data(SURVEY, overwrite = TRUE)
