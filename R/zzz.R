.onLoad <- function(...) {
  .surveyjR <- new.env(parent = emptyenv())
  attach(.surveyjR)
}


.onUnload <- function(...) {
  detach(".surveyjR")
}