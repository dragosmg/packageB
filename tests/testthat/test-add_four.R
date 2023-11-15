test_that("add_four() works", {
  expect_equal(add_four(2), 6)
  expect_equal(add_four(3), 7)

  expect_equal(add_four(2L), 6L)
  expect_equal(add_four(3L), 7L)
})

test_that("add_four() complains with non-numeric inputs", {
  expect_error(
    add_four("a"),
    "`add_four()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )
  expect_error(
    add_four(TRUE),
    "`add_four()` expects a numeric input. You have supplied a logical.",
    fixed = TRUE
  )
  expect_error(
    add_four(c("2", "5")),
    "`add_four()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )

  expect_snapshot_error(add_four("a"))
  expect_snapshot_error(add_four(TRUE))
  expect_snapshot_error(add_four(c("2", "5")))
})
