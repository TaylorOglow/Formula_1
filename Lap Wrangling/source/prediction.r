################################ BAHRAIN

get_bahrain_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:57))) %>%
    mutate(lap = 1:57) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ SAUDI ARABIA

get_sa_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:50))) %>%
    mutate(lap = 1:50) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ AUSTRALIA

get_australia_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:58))) %>%
    mutate(lap = 1:58) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}



################################ IMOLA

get_imola_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:63))) %>%
    mutate(lap = 1:63) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ MIAMI 

get_miami_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:57))) %>%
    mutate(lap = 1:57) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ SPAIN 

get_spain_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:66))) %>%
    mutate(lap = 1:66) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ MONACO 

get_monaco_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:78))) %>%
    mutate(lap = 1:78) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ AZERBAIJAN 

get_azerbaijan_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:51))) %>%
    mutate(lap = 1:51) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ CANADA 

get_canada_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:70))) %>%
    mutate(lap = 1:70) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ GREAT BRITAIN 

get_uk_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:52))) %>%
    mutate(lap = 1:52) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ AUSTRIA 

get_austria_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:71))) %>%
    mutate(lap = 1:71) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ FRANCE 

get_france_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:53))) %>%
    mutate(lap = 1:53) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ HUNGARY 

get_hungary_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:70))) %>%
    mutate(lap = 1:70) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ BELGIUM 

get_belgium_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:44))) %>%
    mutate(lap = 1:44) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ NETHERLANDS 

get_netherlands_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:72))) %>%
    mutate(lap = 1:72) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ MONZA 

get_monza_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:53))) %>%
    mutate(lap = 1:53) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ SINGAPORE 

get_singapore_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:61))) %>%
    mutate(lap = 1:61) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ JAPAN 

get_japan_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:53))) %>%
    mutate(lap = 1:53) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ AUSTIN 

get_austin_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:56))) %>%
    mutate(lap = 1:56) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}
################################ MEXICO 

get_mexico_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:71))) %>%
    mutate(lap = 1:71) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

################################ BRAZIL 

get_brazil_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:71))) %>%
    mutate(lap = 1:71) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}
################################ ABU DHABI (LAPS)

get_uae_prediction <- function(){
 predict_ms <<- predict(formulaone_fit, tibble(lap = c(1:58))) %>%
    mutate(lap = 1:58) %>%
    summarise(race_time_milliseconds = sum(.pred)) 

predict_mins <<- predict_ms %>%
    mutate(race_time_mins = race_time_milliseconds/60000)

predict_all <<- predict_mins %>%
     mutate(race_time_hrs = race_time_milliseconds/3600000)
predict_all
}

