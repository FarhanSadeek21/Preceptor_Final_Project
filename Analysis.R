library(tidyverse)
library(ggplotly)
data <- read.csv("data.csv")

data |>
    drop_na() |>
    select(Continent, Cost.of.Living.Index, Local.Purchasing.Power.Index, Country) |>
    ggplot(aes(Local.Purchasing.Power.Index, Cost.of.Living.Index, color=Continent, size = 50))+
    geom_point()+
    facet_wrap(~Continent)

csvData <- read.csv("csvData.csv")
View(csvData)
data |>
    drop_na() |>
    select(Continent, Cost.of.Living.Index, Local.Purchasing.Power.Index, Country) |>
    ggplot(aes(Local.Purchasing.Power.Index, Cost.of.Living.Index, color=Continent))+
    labs(title="Cost of Living and Local Purchasing Power Index of Countries around the world",
         subtitle="Richer countries have both higher cost of living and purchasing power",
         x="Local Purchasing Power Index",
         y="Cost of Living Index",
         caption = "Source of Data : Numbeo.com")+
    geom_point()

csvData |>
    drop_na() |>
    select(Density, GrowthRate, pop2020, pop2022, continent) |>
    ggplot(aes(GrowthRate, Density, color=continent, size = pop2022))+
    geom_point()


csvData |>
    # drop_na() |>
    #select(Density, GrowthRate, pop2020, pop2022, continent) |>
    ggplot(mapping = aes(x = pop2022, y = area, color=continent))+
    geom_point()