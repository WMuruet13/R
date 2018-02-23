
internal_dates_and_times <- function(ds)
  {

date_time_format <-  "%Y-%m-%d %H:%M"
date_format <- "%Y-%m-%d %H:%M"


ds$S1Onset <-as.POSIXct(ds$S1OnsetDateTime, format = date_time_format) 

}

