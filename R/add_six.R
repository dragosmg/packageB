#' Add six to numeric vector
#'
#' @inheritParams packageA::add_one
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' add_six(2)
#' add_six(3)
add_six <- function(x) {

  if (!is.numeric(x)) {
    msg <- glue::glue(
      "`add_six()` expects a numeric input. You have supplied a {class(x)}."
    )
    stop(msg, call. = FALSE)
  }

  output <- packageA::add_two(x) + add_four(x) - x

  output
}
