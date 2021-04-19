#' Function to retrieve the top 10 NBA scorers per year
#'
#' This function extracts the top 10 scorers in the NBA for the year indicated
#' @param x The year of which you want to know statistics.
#' @keywords NBA, points, scorers
#' @export
#' @examples
#' year_points(2015)

year_points <- function(x){
  nba %>%
    filter(Year == x) %>%
    arrange(desc(PTS)) %>%
    head(10)
}
