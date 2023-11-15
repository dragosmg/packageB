#' Add five to numeric vector
#'
#' @inheritParams packageA::add_one
#'
#' @return a numeric vector
#' @export
#'
#' @examples
#' add_five(2)
#' add_five(3)
add_five <- function(x) {

  if (!is.numeric(x)) {
    msg <- glue::glue(
      "`add_five()` expects a numeric input. You have supplied a {class(x)}."
    )
    stop(msg, call. = FALSE)
  }

  output <- packageA::add_two(x) + packageA::add_three(x) - x
  output
}
