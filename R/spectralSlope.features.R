spectralSlope.features <- function(fname){
  spec.slope = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(spec.slope) = 'spectral.slope'
  return(get.summary.stat(spec.slope))
}