#' Starts BeTidy Quizzes
#'
#' @import learnr
#'
#' @return tutorial
#' @export
#'
#' @examples
#' \dontrun{
#' start_quiz()
#' }
start_quiz <- function() {
  learnr::run_tutorial("quizzes", "BeTidy")
}

#' Starts BeTidy Exercises
#'
#' @import learnr
#'
#' @return tutorial
#' @export
#'
#' @examples
#' \dontrun{
#' start_exercise()
#' }
start_exercise <- function() {
  learnr::run_tutorial("exercises", "BeTidy")
}
