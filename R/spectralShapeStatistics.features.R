spectralShapeStatistics.features <- function(fname){
  spec = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(spec) = c('spectralshape.centroid.median', 
                     'spectralshape.spread.median', 
                     'spectralshape.skewness.median',
                     'spectralshape.kurtosis.median')
  return(apply(spec, 2, median, na.rm = T))
}