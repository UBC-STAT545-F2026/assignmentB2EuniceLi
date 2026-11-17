test_that("Output matches direct call to dplyr", {
  small_tbl <- tibble::tribble(~group, ~var1, ~var2,
                               "A", 1, NA,
                               "A", 2, "x",
                               "B", NA, "y",
                               "C", 3, "z")

  expect_equal( small_tbl |> dplyr::group_by(group) |>
                  dplyr::summarise(dplyr::across(tidyselect::everything(), ~sum(is.na(.x))),
                            .groups = "drop"),
                assignmentB2EuniceLi::countAll_missing_by_group(small_tbl, group)
  )

  expect_equal( small_tbl |> dplyr::group_by(group) |>
                  dplyr::summarise(dplyr::across(tidyselect::everything(), ~sum(is.na(.x))),
                            .groups = NULL),
                assignmentB2EuniceLi::countAll_missing_by_group(small_tbl, group, NULL)
  )
})

test_that("Checking error handling for .groups input", {
  expect_error(
    assignmentB2EuniceLi::countAll_missing_by_group(airquality, Month, "kep")
  )
  expect_no_error(
    assignmentB2EuniceLi::countAll_missing_by_group(airquality, Month, NULL)
  )
})
