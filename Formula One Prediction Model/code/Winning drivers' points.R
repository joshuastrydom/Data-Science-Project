winners_points <- function(data=data, year=year){
    W <- data |> filter(Year==year)
    WP <- W |> filter(Points == max(Points))
    WP
}