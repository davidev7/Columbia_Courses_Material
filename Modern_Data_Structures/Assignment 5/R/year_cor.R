#' NBA correlation variables
#'
#' This function plot the numeric continuos variables of the NBA dataset for the selected year
#' @param x The year of which you want to know statistics.
#' @keywords NBA player correlation
#' @export
#' @examples
#' year_cor(1996)

year_cor <- function(x) {
  df <- tibble(nba) %>%
    filter(Year == x)

  df_numeric <- keep(df, is.numeric)
  df_numeric <- drop_na(df_numeric)

  M <- cor(df_numeric)
  corrplot(M, method="color")
}
