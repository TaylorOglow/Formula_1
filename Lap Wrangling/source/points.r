get_points <- function(){
    
driver1 <<- driver_points %>%
        with(sum(Points[Round <= 2]))

driver2 <<- driver_points %>%
        with(sum(Points[Round <= 2]))

driver3 <<- driver_points %>%
        with(sum(Points[Round <= 3]))

driver4 <<- driver_points %>%
        with(sum(Points[Round <= 4]))

driver5 <<- driver_points %>%
        with(sum(Points[Round <= 5]))

driver6 <<- driver_points %>%
        with(sum(Points[Round <= 6]))

driver7 <<- driver_points %>%
        with(sum(Points[Round <= 7]))

driver8 <<- driver_points %>%
        with(sum(Points[Round <= 8]))

driver9 <<- driver_points %>%
        with(sum(Points[Round <= 9]))

driver10 <<- driver_points %>%
        with(sum(Points[Round <= 10]))

driver11 <<- driver_points %>%
        with(sum(Points[Round <= 11]))

driver12 <<- driver_points %>%
        with(sum(Points[Round <= 12]))

driver13 <<- driver_points %>%
        with(sum(Points[Round <= 13]))

driver14 <<- driver_points %>%
        with(sum(Points[Round <= 14]))

driver15 <<- driver_points %>%
        with(sum(Points[Round <= 15]))

driver16 <<- driver_points %>%
        with(sum(Points[Round <= 16]))

driver17 <<- driver_points %>%
        with(sum(Points[Round <= 17]))
 
driver18 <<- driver_points %>%
        with(sum(Points[Round <= 18]))

driver19 <<- driver_points %>%
        with(sum(Points[Round <= 19]))

driver20 <<- driver_points %>%
        with(sum(Points[Round <= 20]))

driver21 <<- driver_points %>%
        with(sum(Points[Round <= 21]))

driver22 <<- driver_points %>%
        with(sum(Points[Round <= 22]))


points <<- c(driver1, driver2, driver3, driver4, driver5, driver6, driver7, driver8, driver9, driver10, driver11, driver12, driver13, driver14, driver15, driver16, driver17, driver18, driver19, driver20, driver21, driver22)

points <<- data.frame(Points_UTR = points) %>% 
            mutate(Round = row_number()) %>% 
            mutate(Driver = name)
    
season_points <<- rbind(season_points, points)

}
