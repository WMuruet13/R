
listOfFiles <- paste0("R/functions/",list.files(path = "R/functions", pattern = "[.]R$"))
lapply(listOfFiles,source)

if(!"ds" %in% ls()){ds <- get_ssnap()}

ds <- internal_process_variables(ds)
ds <- internal_variable_rename(ds)







