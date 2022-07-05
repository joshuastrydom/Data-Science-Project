plotscoring <- function(data1=data1, year=Year){
    PS <- data1 |> arrange(Year) |> filter(year == Year)
    plot <- PS |>
        ggplot() +
        geom_point(aes(x=Round, y=Points, color = TrackId), alpha = 0.8, size = 3) +
        theme_bw() +
        theme(legend.background = element_rect(fill = "white", size = 1, color = "white"),
              legend.text = element_text(size = 6),
              legend.title = element_text(size = 10, face = "bold"),
              plot.title = element_text(size = 12, face = "bold"),
              aspect.ratio = 9 / 16,
              legend.position = "bottom") +
        guides(color = guide_legend(override.aes = list(size = 4))) +
        labs(title = "Total 'scoring' points for the champion")
    plot
}