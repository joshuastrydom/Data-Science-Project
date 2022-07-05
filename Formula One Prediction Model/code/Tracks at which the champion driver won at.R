won_races <- function(data1=data1, data2=data2, year=year){
    S <- data1 |> filter(year==year) |> arrange("Driver")
    C <- left_join(
        S,
        data2,
        by = "Driver"
    ) |> filter(Year.x == year, Year.y == year)
    names(C)[4] <- "Year"
    C[ , c(1,2,4,5,6,7)]
}