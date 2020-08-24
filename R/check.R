#' Checks that user code and solution code results are equal.
#'
#' @param label Label for exercise chunk.
#' @param user_code R code submitted by the user.
#' @param solution_code Code provided within the “-solution” chunk for the exercise.
#' @param check_code Code provided within the “-check” chunk for the exercise.
#' @param envir_result The R environment after the execution of the chunk.
#' @param evaluate_result The return value from the evaluate::evaluate function.
#' @param envir_prep A copy of the R environment before the execution of the chunk.
#' @param ... Additional parameters
#'
#' @return list with message
#' @export
#'
#' @examples
#' check_result_f("ex1", "x <- 5", "x <- 5", "TRUE")
check_result_f <- function(
  label,
  user_code,
  solution_code,
  check_code,
  envir_result,
  evaluate_result,
  envir_prep,
  ...
) {
  solution_result <- eval(parse(text = solution_code))
  user_result <- eval(parse(text = user_code))

  if (identical(solution_result, user_result)) {
    list(message = "Great Job!", correct = TRUE, location = "append")
  }
  else {
    list(message = "Incorrect Answer!", correct = FALSE, location = "append")
  }
}

#' Checks that user code and solution code are equal.
#'
#' @param label Label for exercise chunk.
#' @param user_code R code submitted by the user.
#' @param solution_code Code provided within the “-solution” chunk for the exercise.
#' @param check_code Code provided within the “-check” chunk for the exercise.
#' @param envir_result The R environment after the execution of the chunk.
#' @param evaluate_result The return value from the evaluate::evaluate function.
#' @param envir_prep A copy of the R environment before the execution of the chunk.
#' @param ... Additional parameters
#'
#' @return list with message
#' @export
#'
#' @examples
#' check_code_f("ex1", "x <- 5", "x <- 5", "TRUE")
check_code_f <- function(
  label,
  user_code,
  solution_code,
  check_code,
  envir_result,
  evaluate_result,
  envir_prep,
  ...
) {
  if (trimws(solution_code) == trimws(user_code)) {
    list(message = "Great Job!", correct = TRUE, location = "append")
  }
  else {
    list(message = "Incorrect Answer!", correct = FALSE, location = "append")
  }
}
