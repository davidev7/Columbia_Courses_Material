#' Retrieve the oldest NBA player per year
#'
#' This function retrieves the oldest active player in the NBA for the year indicated
#' @param x The year of which you want to know statistics.
#' @keywords NBA player old
#' @export
#' @examples
#' year_oldest(2002)

year_oldest <- function(x){
  nba %>%
    filter(Year == x) %>%
    arrange(desc(Age)) %>%
    head(1)
}
