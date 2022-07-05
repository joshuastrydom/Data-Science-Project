won_races_A5 <- function(data=data, year=year){
    data |> filter(Round > 5)
}