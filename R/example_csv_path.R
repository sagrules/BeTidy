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
