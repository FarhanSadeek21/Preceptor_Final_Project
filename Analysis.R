us_state <- read_csv('US States and Cost of Living.csv')

us_state |>
    select(GDP Per Capita 2019, State) |>
    ggplot(aes(State, GDP Per Capita 2019))+
    geom_bar()