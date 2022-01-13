#' Register surveyjR package
#' 
#' Calls internal functions `registerDependencies()` and `registerJs()`. Additionally writes
#' theme to .surveyjR environment such that other functions can retrieve it from there.
#'
#' @param version survey-jquery version.
#' @param theme if you use a bootswatch theme bootrap needs to be chosen (default).
#'
#' @return registration objects (lists) retrieved from internal functions...
#' @export
useSurveyjr <- 
  function(version = "1.9.4",
           theme = c("modern", "default", "orange", "darkblue", "darkrose", "stone", "winter", "winterstone", "bootstrap")) {
  
  if(missing(theme)) theme <- "bootstrap"
  
  theme <- match.arg(theme, several.ok = FALSE)
  assign("theme", theme, envir = as.environment(".surveyjR"))
  
  registration1 <- registerDependencies(version, theme)
  registration2 <- registerJs()

  
  return(list(registration1, registration2))
}
