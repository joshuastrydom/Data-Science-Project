totalpoints_F5 <- function(data=data, year=Year){
    P_F5 <- data |> filter(year==Year)
    TP_F5 <- P_F5[,4] + P_F5[,8]
    TP_F5
}