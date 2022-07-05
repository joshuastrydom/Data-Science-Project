F1_Standings <- function(data1=data1, data2=data2, Year=Year, Pos=Pos){
    D <- data1 |> filter(Year >= 2012) |> filter(Pos == 1)
    C <- data2 |> filter(Year >= 2012) |> filter(Pos == 1)
    DC <- full_join(
        D,
        C,
        by = "Year") |> arrange("Pos")
    names(DC)[1] <- "Position"
    names(DC)[2] <- "Drivers Championship"
    names(DC)[8] <- "Constructors Championship"
    names(DC)[5] <- "Driver Points"
    names(DC)[9] <- "Constructor Points"
    DC[, c(1,2,5,6,8,9)]
}