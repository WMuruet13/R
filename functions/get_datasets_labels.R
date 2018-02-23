
get_datasets_labels <- function(...){
  
  datasets <- list(...)
  ### Progress bar ###
  ProgBar <- txtProgressBar(min = 0,
                            max = length(datasets),
                            style = 3)
  for(d in seq(datasets)) 
    {
    X <- datasets[[d]]
    i <- 1
    v1 <- character(length = length(names(X)))
    v2 <- character(length = length(names(X)))
    v3 <- character(length = length(names(X)))
    
    for(name in names(X))
      {
      ### Vector 1 ### Variable Name
      if(i == 1){v1[i] <- name}
  
      if(i != 1){v1[i] <- paste0(",",name)}
  
      ### Vector 2 ### Labels
      if("label" %in% names(attributes(eval(parse(text= paste0("X$",name))))))
        {
        v2[i] <- attributes(eval(parse(text = paste0("X$",name))))$label
        }else {v2[i] <- name}
  
  
      ### Vector 3 ### names
      if("labels" %in% names(attributes(eval(parse(text= paste0("X$",name))))))
        {
        v3[i] <- paste(as.vector(paste(names(attributes(eval(parse(text = paste0("X$",name))))$labels),as.numeric(attributes(eval(parse(text = paste0("X$",name))))$labels),sep = ' = ')),collapse = ", ")
        }else { v3[i] <- "N/A"}
      ### Counter for name loop
      i <- i+1
    }
    ### Print the results
    output <-here::here("Data", paste0("ssnap",d,".csv"))
    
write.csv(as.data.frame(matrix(c(v1,v2,v3),ncol = 3)),file = output)

### Update progress bar
Sys.sleep(0.1)
setTxtProgressBar(ProgBar,
                  value= d)
  }
}
