won_races_A10 <- function(data=data, year=year){
    data |> filter(Round > 10)
}