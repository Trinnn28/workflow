library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(trim = FALSE, alpha = 0.8, color = "white", linewidth = 0.4) +
  geom_boxplot(width = 0.12, fill = "white", outlier.shape = NA, alpha = 0.8) +
  scale_fill_viridis_d(option = "C", end = 0.9, guide = "none") +
  scale_y_continuous(labels = scales::label_dollar()) +
  labs(
    title = "How diamond prices vary by cut",
    subtitle = "Violin shapes show the price distribution; boxes mark the middle half",
    x = "Cut quality",
    y = "Price (USD)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )

ggsave(
  filename = "diamonds-2.png",
  plot = diamonds_plot,
  width = 9,
  height = 6,
  dpi = 300,
  bg = "white"
)
