internal_select_interestingVars <- function(...)
{
  datasets <- list(...)
  to_bind <- list()
  for(d in seq(datasets))
  {
    if("v2_11" %in% names(datasets[[d]]))
    {
      x <- internal_afterApr15(datasets[[d]])
    }
    else
    {
        x <- internal_preApr15(datasets[[d]])
    }
    to_bind[[d]] <- x
  }
  df <- do.call("rbind",to_bind)
  return(df)
}