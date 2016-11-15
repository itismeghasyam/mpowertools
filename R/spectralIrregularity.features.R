spectralIrregularity.features <- function(fname){
  spec = read.table(fname, skip = 5, sep = ',', header = F)
  spec.mx = data.frame(spectral.max.irreg = apply(spec, 1, max, na.rm = T))
  return(get.summary.stat(spec.mx))
}