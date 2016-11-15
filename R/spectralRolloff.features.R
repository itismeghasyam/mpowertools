spectralRolloff.features <- function(fname){
  spec = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(spec) = 'spec.rollof'
  return(get.summary.stat(spec))
}