spectralCrestFactorPerBand.features <- function(fname){
  spec = read.table(fname, skip = 5, sep = ',', header = F)
  spec.max = data.frame(speccrest.frame.max = apply(spec, 1, max, na.rm = T))
  
  return(get.summary.stat(spec.max))
}