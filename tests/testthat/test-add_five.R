test_that("add_five() works", {
  expect_equal(add_five(2), 7)
  expect_equal(add_five(3), 8)

  expect_equal(add_five(2L), 7L)
  expect_equal(add_five(3L), 8L)
})

test_that("add_five() complains with non-numeric inputs", {
  expect_error(
    add_five("a"),
    "`add_five()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )
  expect_error(
    add_five(TRUE),
    "`add_five()` expects a numeric input. You have supplied a logical.",
    fixed = TRUE
  )
  expect_error(
    add_five(c("2", "5")),
    "`add_five()` expects a numeric input. You have supplied a character.",
    fixed = TRUE
  )

  expect_snapshot_error(add_five("a"))
  expect_snapshot_error(add_five(TRUE))
  expect_snapshot_error(add_five(c("2", "5")))
})
