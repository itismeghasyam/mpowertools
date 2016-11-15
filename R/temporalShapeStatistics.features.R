temporalShapeStatistics.features <- function(fname){
  ts = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(ts) = c('temporal.shape.Centroid.median', 
                   'temporal.shape.spread.median', 
                   'temporal.shape.skewness.median',
                   'temporal.shape.kurtosis.median')
  ts = apply(ts, 2, median, na.rm = T)
  return(ts)
}