#' Convert Time Series to Data Frame
#' 
#' Converts a time series object to a data frame with Year, Period, and Value columns.
#' 
#' @param ts_obj A time series object of class 'ts'.
#' @param name Character string for the value column name (default "Value").
#' @return A data frame with columns Year, Period, and the value column.
#' @examples
#' data(synth_gap)
#' ts_to_df(synth_gap, name = "Sales")
#' @export
ts_to_df <- function(ts_obj, name = "Value") {
  if (!inherits(ts_obj, "ts")) stop("Input must be a time series object")
  time_vals <- time(ts_obj)
  freq <- frequency(ts_obj)
  period <- if (freq == 4) {
    paste("Q", as.integer((time_vals - trunc(time_vals)) * 4 + 1), sep = "")
  } else if (freq == 12) {
    month.abb[as.integer((time_vals - trunc(time_vals)) * 12 + 1)]
  } else {
    as.character(as.integer((time_vals - trunc(time_vals)) * freq + 1))
  }
  df <- as.data.frame(as.matrix(ts_obj))
  df <- data.frame(
    Year = trunc(time_vals),
    Period = period,
    df,
    row.names = NULL
  )
  if (ncol(as.matrix(ts_obj)) == 1) {
    colnames(df)[3] <- name
  }
  return(df)
}
