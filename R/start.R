#' Starts BeTidy Quizzes
#'
#' @import learnr
#'
#' @return
#' @export
#'
#' @examples
#' start_quiz()
start_quiz <- function() {
  learnr::run_tutorial("quizzes", "BeTidy")
}

#' Starts BeTidy Exercises
#'
#' @import learnr
#'
#' @return
#' @export
#'
#' @examples
#' start_exercise()
start_exercise <- function() {
  learnr::run_tutorial("exercises", "BeTidy")
}
