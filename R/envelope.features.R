envelope.features <- function(fname){
  envelope.shape.st = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(envelope.shape.st) = c('envelope.centroid.median', 
                                  'envelope.spread.median', 
                                  'envelope.skewness.median',
                                  'envelope.kurtosis.median')
  envelope.shape.st = apply(envelope.shape.st, 2, median, na.rm = T)
  return(envelope.shape.st)
}