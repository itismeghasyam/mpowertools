spectralVariation.features <- function(fname){
  spec = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(spec) = 'spectral.var'
  return(get.summary.stat(spec))
}