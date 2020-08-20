#' Helper function that gets the path of the example csv file included
#' with BeTidy
#'
#' @return String with path
#' @export
#'
#' @examples
#' example_csv_path()
example_csv_path <- function() {
  system.file("extdata", "population.csv", package = "BeTidy", mustWork = TRUE)
}

#' Helper function that gets the path of the example tsv file included
#' with BeTidy
#'
#' @return String with path
#' @export
#'
#' @examples
#' example_tsv_path()
example_tsv_path <- function() {
  system.file("extdata", "population.tsv", package = "BeTidy", mustWork = TRUE)
}

#' Helper function that gets the path of the example delimited file included
#' with BeTidy
#'
#' @return String with path
#' @export
#'
#' @examples
#' example_delim_path()
example_delim_path <- function() {
  system.file("extdata", "population.delim", package = "BeTidy", mustWork = TRUE)
}
