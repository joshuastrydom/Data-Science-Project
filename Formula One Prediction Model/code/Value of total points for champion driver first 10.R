totalpoints_F10 <- function(data=data, year=Year){
    P_F10 <- data |> filter(year==Year)
    TP_F10 <- P_F10[,5] + P_F10[,9]
    TP_F10
}