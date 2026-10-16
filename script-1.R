result <- sum(1:10)
print(result)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.45, size = 1) +
  scale_color_viridis_d(option = "C", end = 0.9) +
  labs(
    title = "Diamond size and price",
    subtitle = "Price generally rises with carat, with variation across cut grades",
    x = "Carat",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave(
  filename = "diamonds-1.png",
  plot = diamonds_plot,
  width = 9,
  height = 6,
  dpi = 300,
  bg = "white"
)
