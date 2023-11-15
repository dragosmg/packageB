#' Add four to numeric vector
#'
#' @inheritParams packageA::add_one
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' add_four(2)
#' add_four(3)
add_four <- function(x) {

  if (!is.numeric(x)) {
    msg <- glue::glue(
      "`add_four()` expects a numeric input. You have supplied a {class(x)}."
    )
    stop(msg, call. = FALSE)
  }

  output <- packageA::add_one(x) + packageA::add_three(x) - x
  output
}
