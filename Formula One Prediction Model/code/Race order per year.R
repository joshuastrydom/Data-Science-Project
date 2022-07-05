raceorder <- function(data1=data1, data2=data2, year=year){
    order <- data1[1:5] |> filter(year==year)
    order
    won <- left_join(
        order,
        data2,
        by = "round"
    ) |> filter(year.x==year, year.y==year)
    won
}