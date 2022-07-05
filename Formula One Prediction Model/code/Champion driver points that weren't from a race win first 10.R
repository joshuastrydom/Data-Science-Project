scored_points_F10 <- function(data=data, year=year){
    data |> filter(Round <= 10)
}