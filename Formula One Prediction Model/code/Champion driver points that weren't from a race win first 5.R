scored_points_F5 <- function(data=data, year=year){
    data |> filter(Round <= 5)
}