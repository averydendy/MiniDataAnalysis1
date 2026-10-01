library(tidyverse)
music <- read_csv("dat/RollingStone500.csv")

glimpse(music)

#quant variable: scatterplot, 

music |>
  ggplot(aes(`2003 Rank`, `2020 Rank`)) +
  geom_point()

#album release year to weeks on bilboard
#how has staying power on the charts changed over time
#2 quant vars: scatterplot


music |>
  mutate(weeks = as.numeric(`Wks on Billboard`))
  ggplot(aes(`Release Year`, weeks)) +
  geom_point()
  
music |>
  mutate(weeks = as.numeric(`Wks on Billboard`)) |>
  group_by(`Album Genre`) |>
  summarise(mean_wks = mean(weeks, na.rm = TRUE)) |>
  arrange(mean_wks)
  

music |>
  ggplot(aes(`2020 Rank`, `Release Year`)) +
  geom_point()

  