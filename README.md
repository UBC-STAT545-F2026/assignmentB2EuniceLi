
# assignmentB2EuniceLi

This is the package created strictly for assignmentB2 and is the
pre-baked function which creates a new data frame with counts of the
total number of missing values in each column optionally grouped by a
user defined column.

## Installation

Install packages by running the following:

``` r
devtools::install_github("UBC-STAT545-F2026/assignmentB2EuniceLi", ref = "0.1.0")
```

## Example

This is a basic example which shows you how to use this function:

``` r
library(assignmentB2EuniceLi)
## basic example code
countAll_missing_by_group(datasets::airquality,Wind)
#> # A tibble: 31 × 6
#>     Wind Ozone Solar.R  Temp Month   Day
#>    <dbl> <int>   <int> <int> <int> <int>
#>  1   1.7     1       0     0     0     0
#>  2   2.3     0       0     0     0     0
#>  3   2.8     0       0     0     0     0
#>  4   3.4     0       0     0     0     0
#>  5   4       0       0     0     0     0
#>  6   4.1     0       0     0     0     0
#>  7   4.6     1       1     0     0     0
#>  8   5.1     0       0     0     0     0
#>  9   5.7     1       0     0     0     0
#> 10   6.3     2       0     0     0     0
#> # ℹ 21 more rows
countAll_missing_by_group(datasets::airquality,Day)
#> # A tibble: 31 × 6
#>      Day Ozone Solar.R  Wind  Temp Month
#>    <int> <int>   <int> <int> <int> <int>
#>  1     1     1       0     0     0     0
#>  2     2     1       0     0     0     0
#>  3     3     1       0     0     0     0
#>  4     4     2       1     0     0     0
#>  5     5     2       2     0     0     0
#>  6     6     1       2     0     0     0
#>  7     7     0       0     0     0     0
#>  8     8     1       0     0     0     0
#>  9     9     0       0     0     0     0
#> 10    10     2       0     0     0     0
#> # ℹ 21 more rows
```
