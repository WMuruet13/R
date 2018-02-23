get_ssnap <- function(redo=FALSE)
{
  path <- here::here("Data","ArrivalTimesDataSet.RDS")
  
  if(!file.exists(path) | redo)
  {
    v <- sum(c("ssnap_apr2013_mar2014","ssnap_apr2014_mar2015","ssnap_apr2015_mar2016","ssnap_apr2016_mar2017") %in% ls())
  if(v != 4)
  {  
  
    ssnap_apr2013_mar2014 <- haven::read_dta(here::here("Data","ssnap1.dta"))#01Apr13 to 31Mar14
  
    ssnap_apr2014_mar2015 <- haven::read_dta(here::here("Data","ssnap2.dta"))#01Apr14 to 31Mar15
  
    ssnap_apr2015_mar2016 <- haven::read_dta(here::here("Data","ssnap3.dta"))#01Apr15 to 31Mar16
  
    ssnap_apr2016_mar2017 <- haven::read_dta(here::here("Data","ssnap4.dta"))#01Apr16 to 31Mar17
  }
  
  ds<- internal_select_interestingVars(ssnap_apr2013_mar2014,ssnap_apr2014_mar2015,ssnap_apr2015_mar2016,ssnap_apr2016_mar2017)
  
  saveRDS(ds,file = path)
  }
  else
  {
      ds <- readRDS(path)
  }
  return(ds)
}

