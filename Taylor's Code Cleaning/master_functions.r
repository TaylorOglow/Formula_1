# -*- coding: utf-8 -*-
# ####################################### INITIALIZE DATA FUNCTION

initialize_data <- function(){
    circuits <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/circuits.csv")

constructor_standings <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/constructor_standings.csv") 

constructor_results <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/constructor_results.csv") 

constructors <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/constructors.csv")

drivers <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/drivers.csv")

driver_standings <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/driver_standings.csv")

lap_times <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/lap_times.csv") 

pit_stops <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/pit_stops.csv")

qualifying <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/qualifying.csv") 

results <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/results.csv") 

races <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/races.csv") 

status <<- read_csv("https://raw.githubusercontent.com/TaylorOglow/group_project_proposal/main/data_set/status.csv") 
}

# ####################################### INITIALIZE CIRCUITS FUNCTION

initialize_circuits <- function(){

locations_2022 <<- c("Sakhir", "Jeddah", "Melbourne", "Imola", "Miami", "Montmeló", "Monte-Carlo", "Baku", "Montreal", "Silverstone", "Spielberg", 
                    "Le Castellet", "Budapest", "Spa", "Zandvoort", "Monza", "Sochi", "Marina Bay", "Suzuka", "Austin", "Mexico City", "São Paulo", "Abu Dhabi")

circuits_2022 <<- circuits %>% 
           filter(location %in% locations_2022) %>%
           filter(name != "A1-Ring") %>%
           select(circuitId:alt)

circuit_ids <<- circuits_2022 %>%
              pull(circuitId)

circuits_IDS <<- circuits_2022 %>%
                select(circuitId, name, country, location) %>% 
                arrange(country)
}

# ####################################### INITIALIZE CONSTRUCTORS FUNCTION

initialize_constructors <- function(){

# Filtering 2022 Constructors

team_names <<- c("Alfa Romeo", "AlphaTauri", "Alpine F1 Team", "Aston Martin", "Ferrari", 
                "Haas F1 Team", "McLaren", "Mercedes", "Red Bull", "Williams")

teams_2022 <<- constructors %>%
                 filter(name %in% team_names)

# Extracting 2022 Constructor ID's

constructor_ids <<- teams_2022 %>%
              pull(constructorId)
}

# ####################################### INITIALIZE COURSES FUNCTION

initialize_courses <- function(){

# ### Filtering Race Data for 2022 Races

past_2022_races <<- races %>%
                    filter(circuitId %in% circuit_ids) %>%
                    filter(year != "2022")

# #### Extracting Race ID's

race_ids <<- past_2022_races %>%
            pull(raceId)


# #### Filtering Race Data For All 23 Circuits

# ############################################

bahrain <<- past_2022_races %>% 
            filter(circuitId == 3) %>%
            arrange(desc(year))

bahrain_race_ID <<- bahrain %>%
                pull(raceId)

# ############################################

sa <<- past_2022_races %>% 
            filter(circuitId == 77) %>%
            arrange(desc(year))

saudi_race_ID <<- sa %>%
                pull(raceId)

# ############################################

aus <<- past_2022_races %>% 
            filter(circuitId == 1) %>%
            arrange(desc(year))

aus_race_ID <<- aus %>%
                pull(raceId)

# ############################################

imola <<- past_2022_races %>% 
            filter(circuitId == 21) %>%
            arrange(desc(year))

imola_race_ID <<- imola %>%
                pull(raceId)

# ############################################

miami <<- past_2022_races %>% 
            filter(circuitId == 79) %>%
            arrange(desc(year))

miami_race_ID <<- miami %>%
                pull(raceId)

# ############################################

spain <<- past_2022_races %>% 
            filter(circuitId == 4) %>%
            arrange(desc(year))

spain_race_ID <<- spain %>%
                pull(raceId)

# ############################################

monaco <<- past_2022_races %>% 
            filter(circuitId == 6) %>%
            arrange(desc(year))

monaco_race_ID <<- monaco %>%
                pull(raceId)

# ############################################

azerbaijan <<- past_2022_races %>% 
            filter(circuitId == 73) %>%
            arrange(desc(year))

azerbaijan_race_ID <<- azerbaijan %>%
                pull(raceId)

# ############################################

canada <<- past_2022_races %>% 
            filter(circuitId == 7) %>%
            arrange(desc(year))

canada_race_ID <<- canada %>%
                pull(raceId)

# ############################################

uk <<- past_2022_races %>% 
            filter(circuitId == 9) %>%
            arrange(desc(year))


uk_race_ID <<- uk %>%
                pull(raceId)

# ############################################

austria <<- past_2022_races %>% 
            filter(circuitId == 70) %>%
            arrange(desc(year))


austria_race_ID <<- austria %>%
                pull(raceId)

# ############################################

france <<- past_2022_races %>% 
            filter(circuitId == 34) %>%
            arrange(desc(year))


france_race_ID <<- france %>%
                pull(raceId)

# ############################################

hungary <<- past_2022_races %>% 
            filter(circuitId == 11) %>%
            arrange(desc(year))


hungary_race_ID <<- hungary %>%
                pull(raceId)

# ############################################

belgium <<- past_2022_races %>% 
            filter(circuitId == 13) %>%
            arrange(desc(year))


belgium_race_ID <<- belgium %>%
                pull(raceId)

# ############################################

netherlands <<- past_2022_races %>% 
            filter(circuitId == 39) %>%
            arrange(desc(year))


netherlands_race_ID <<- netherlands %>%
                pull(raceId)

# ############################################

monza <<- past_2022_races %>% 
            filter(circuitId == 14) %>%
            arrange(desc(year))

monza_race_ID <<- monza %>%
                pull(raceId)

# ############################################

singapore <<- past_2022_races %>% 
            filter(circuitId == 15) %>%
            arrange(desc(year))

singapore_race_ID <<- singapore %>%
                pull(raceId)

# ############################################

japan <<- past_2022_races %>% 
            filter(circuitId == 22) %>%
            arrange(desc(year))

japan_race_ID <<- japan %>%
                pull(raceId)

# ############################################

austin <<- past_2022_races %>% 
            filter(circuitId == 69) %>%
            arrange(desc(year))

austin_race_ID <<- austin %>%
                pull(raceId)

# ############################################

mexico <<- past_2022_races %>% 
            filter(circuitId == 32) %>%
            arrange(desc(year))

mexico_race_ID <<- mexico %>%
                pull(raceId)

# ############################################

brazil <<- past_2022_races %>% 
            filter(circuitId == 18) %>%
            arrange(desc(year))

brazil_race_ID <<- brazil %>%
                pull(raceId)

# ############################################

uae <<- past_2022_races %>% 
            filter(circuitId == 24) %>%
            arrange(desc(year))

uae_race_ID <<- uae %>%
                pull(raceId)
}

# ####################################### MASTER INITIALIZE FUNCTION

initialize_master <- function(){
    initialize_data()
    initialize_circuits()
    initialize_constructors()
    initialize_courses()
}
