totalpoints_A5 <- function(data=data, year=Year){
    P_A5 <- data |> filter(year==Year)
    TP_A5 <- P_A5[,6] + P_A5[,10]
    TP_A5
}