# Loading packages ----

if(!require("install.load")){
  install.packages("install.load")
}

install.load::install_load(c("tidyverse", "janitor", "readxl"))

# Downloading data into local directory ----

link <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/birthsdeathsandmarriages/conceptionandfertilityrates/datasets/conceptionstatisticsenglandandwalesreferencetables/2020/conceptions2020workbook.xlsx"

download.file(link, "conceptions2020.xlsx", mode = "wb")

# Reading the data ----

conception <- read.xlsx("conceptions2020.xlsx", sheet = "1a", startRow = 8, sep.names = " ") %>% # Select variables needed for the analysis
  select(
c("Year of conception", "All ages Number of conceptions", "Under 16 Number of conceptions", "Under 18 Number of conceptions", "Under 20 Number of conceptions", "20 to 24 Number of conceptions", "25 to 29 Number of conceptions", "30 to 34 Number of conceptions", "35 to 39 Number of conceptions", "40 and over Number of conceptions"))


teenage_pregnancy <- read.xlsx("conceptions2020.xlsx", sheet = "1b", startRow = 8, sep.names = " ") %>% # Select variables needed for the analysis
select(
c("Year of conception", "Under 16 Number of conceptions", "Under 16 Number of conceptions leading to maternities", "Under 16 Number of conceptions terminated by abortion", "Under 14 Number of conceptions", "Under 14 Number of conceptions leading to maternities", "Under 14 Number of conceptions terminated by abortion", "Age 14 Number of conceptions", "Age 14 Number of conceptions leading to maternities", "Age 14 Number of conceptions terminated by abortion", "Age 15 Number of conceptions", "Age 15 Number of conceptions leading to maternities", "Age 15 Number of conceptions terminated by abortion", "Age 16 Number of conceptions", "Age 16 Number of conceptions leading to maternities", "Age 16 Number of conceptions terminated by abortion", "Age 17 Number of conceptions", "Age 17 Number of conceptions leading to maternities", "Age 17 Number of conceptions terminated by abortion", "Age 18 Number of conceptions", "Age 18 Number of conceptions leading to maternities", "Age 18 Number of conceptions terminated by abortion", "Age 19 Number of conceptions", "Age 19 Number of conceptions leading to maternities", "Age 19 Conceptions terminated by abortion"))

    


conception_married <- read.xlsx("conceptions2020.xlsx", sheet = "2", startRow = 8, sep.names = " ") %>% # Select variables needed for the analysis
  select(
    c("Year of conception", "All ages Number of conceptions", "Under 20 Number of conceptions", "Under 20 Percentage of conceptions leading to abortion", "Age 20 to 24 Number of conceptions", "Age 20 to 24 Percentage of conceptions leading to abortion", "Age 25 to 29 Number of conceptions", "Age 25 to 29 Percentage of conceptions leading to abortion", "Age 30 to 34 Number of conceptions", "Age 30 to 34 Percentage of conceptions leading to abortion", "Age 35 to 39 Number of conceptions", "Age 35 to 39 Percentage of conceptions leading to abortion", "Age 40 and over Number of conceptions", "Age 40 and over Percentage of conceptions leading to abortion"))


conception_not_married <- read.xlsx("conceptions2020.xlsx", sheet = "3", startRow = 9, sep.names = " ") %>% # Select variables needed for the analysis
  select(
    c("Year of conception", "Age under 20 Number of conceptions", "Age under 20 Percentage of conceptions outside marriage or civil partnership leading to a maternity within marriage or civil partnership", "Age under 20 Percentage of conceptions leading to abortion", "Age 20 to 24 Percentage of conceptions outside marriage or civil partnership", "Age 20 to 24 Number of conceptions", "Age 20 to 24 Percentage of conceptions outside marriage or civil partnership leading to a maternity within marriage or civil partnership", "Age 20 to 24 Percentage of conceptions leading to abortion", "Age 25 to 29 Percentage of conceptions outside marriage or civil partnership", "Age 25 to 29 Number of conceptions", "Age 25 to 29 Percentage of conceptions outside marriage or civil partnership leading to a maternity within marriage or civil partnership", "Age 25 to 29 Percentage of conceptions leading to abortion", "Age 30 to 34 Percentage of conceptions outside marriage or civil partnership", "Age 30 to 34 Number of conceptions", "Age 30 to 34 Percentage of conceptions outside marriage or civil partnership leading to a maternity within marriage or civil partnership", "Age 30 to 34 Percentage of conceptions leading to abortion", "Age 35 to 39 Percentage of conceptions outside marriage or civil partnership", "Age 35 to 39 Number of conceptions", "Age 35 to 39 Percentage of conceptions outside marriage or civil partnership leading to a maternity within marriage or civil partnership", "Age 35 to 39 Percentage of conceptions leading to abortion", "Age 40 and over Percentage of conceptions outside marriage or civil partnership", "Age 40 and over Number of conceptions", "Age 40 and over Percentage of conceptions outside marriage or civil partnership leading to a maternity within marriage or civil partnership", "Age 40 and over Percentage of conceptions leading to abortion"))


