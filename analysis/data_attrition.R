### Analysis ###

#### Data Attrition ####
data_attrition <- list()
i <- 1
data_attrition[[i]] <- paste0("Total Patients registered: "
                              , dim(ds)[1]
                              );i+1

#### Exclude Non-Strokes ####
data_attrition[[i]] <- paste0("Total non-strokes: "
                              , sum(ds$S1Diagnosis !=0, na.rm = TRUE)
                              );i+1
ds <- dplyr::filter(ds,
                    ds$S1Diagnosis == 0)

#### Exclude Patients with stroke onset before 01-April-2013 ####
lower_date_range <- as.POSIXct("2013-04-01 00:00", format = date_time_format)

data_attrition[[i]] <- paste0("Patients with strokes before 01-April-2013 ",
                              sum(ds$S1OnsetDateTime <  lower_date_range, na.rm=TRUE));i+1

ds <- dplyr::filter(ds,
                    ds$S1OnsetDateTime >=  lower_date_range)

#### Exclude patients with in-hospital onset strokes ####

