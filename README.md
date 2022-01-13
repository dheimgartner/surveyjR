
# surveyjR

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of surveyjR is to bring the power of SurveyJS to R Shiny. In particular its various input forms and the survey flow handling without the need to go through the hustle of creating dynamic UIs, new input bindings, etc.

The survey data can directly be collected in an R session which brings the whole power and familiarity of the R universe to the survey flow.

Use the SurveyJS creator to construct the underlying JSON: https://surveyjs.io/create-survey

## Installation

You can install the dev version from my github page via:

``` r
devtools::install_github("dheimgartner/surveyjR")
```

## Example

Please consult the `surveyApp()` for a simple example (vignettes will follow some time...).

``` r
library(surveyjR)
surveyApp("sandstone", "patient")
```

## Remarks

Things are not really testable as the main funcionality simply wraps around the SurveyJS framework and (as far as I've understood) we can only access reactive values in shinytest (that is we can't fill in a survey to simulate a use case).

Things that need to done:
- Write js function for getting particular value (by questionName) on the fly. This should be relatively easy. However, the `survey` object is initialized within the `renderSurvey()` js function and thus currently has no global scope. -> survey.getValue("questionName") and then `Shiny.setInputValue()` would be the idea...
