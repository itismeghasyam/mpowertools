spectralFlux.features <- function(fname){
  spec = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(spec) = 'spectral.flux'
  return(get.summary.stat(spec))
}