#' Build common tables for your research needs!
#'
#' @name carpenter
#' @seealso \code{\link{add_rows}} to add rows to the table,
#'   \code{\link{renaming}} for renaming of columns and rows,
#'   \code{\link{build_table}}, \code{\link{table_stats}} for a list of built-in
#'   summary statistics. For a more detailed walkthrough of carpenter, see the
#'   introduction vignette using \code{vignette('carpenter')}.
#' @importFrom magrittr '%>%'
#'
#' @examples
#'
#' library(magrittr)
#' outline_table(iris, 'Species') %>%
#'  add_rows(c('Sepal.Length', 'Petal.Length'), stat_meanSD) %>%
#'  add_rows('Sepal.Width', stat_medianIQR) %>%
#'  renaming('rows', function(x) gsub('Sepal\\.', 'Sepal ', x)) %>%
#'  renaming('header', c('Measures', 'Setosa', 'Versicolor', 'Virginica')) %>%
#'  build_table(caption = 'A caption for the table')
#'
NULL