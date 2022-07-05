accumpoints <- function(data1=data1, data2=data2, year=Year){
    A <- data1 |> filter(year==Year) |> arrange("Driver")
    P <- left_join(
        A,
        data2,
        by = "Driver"
    ) |> filter(Year.x == year, Year.y == year)
    names(P)[4] <- "Year"
    P$Accumulated.Points = cumsum(P$Points)
    P[, c(1,2,4,5,6,7,9)]
}