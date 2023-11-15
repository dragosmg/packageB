test_that("add_six() works", {
  expect_equal(add_six(2), 8)
  expect_equal(add_six(3), 9)

  expect_equal(add_six(2L), 8L)
  expect_equal(add_six(3L), 9L)
})

test_that("add_six() complains with non-numeric inputs", {
  expect_error(
    add_six("a"),
    "`add_six()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )
  expect_error(
    add_six(TRUE),
    "`add_six()` expects a numeric input. You have supplied a logical.",
    fixed = TRUE
  )
  expect_error(
    add_six(c("2", "5")),
    "`add_six()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )

  expect_snapshot_error(add_six("a"))
  expect_snapshot_error(add_six(TRUE))
  expect_snapshot_error(add_six(c("2", "5")))
})
