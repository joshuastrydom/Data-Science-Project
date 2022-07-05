totalpoints_A10 <- function(data=data, year=Year){
    P_A10 <- data |> filter(year==Year)
    TP_A10 <- P_A10[,7] + P_A10[,11]
    TP_A10
}