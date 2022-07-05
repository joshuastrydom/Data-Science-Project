total_points <- function(data1=data1, data2=data2, year=year){
    P <- data1 |> filter(year==year) |> arrange("Driver")
    TP <- left_join(
        P,
        data2,
        by = "Driver"
    ) |> filter(Year.x == year, Year.y == year)
    names(TP)[4] <- "Year"
    TP[ , c(1,2,4,5,6,7)]
}