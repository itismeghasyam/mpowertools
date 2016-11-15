magnitudeSpectrum.features <- function(fname){
  ms = read.table(fname, skip = 5, sep = ',', header = F)
  max.mag = data.frame(magspec.max = apply(ms, 1, max, na.rm = T))
  return(get.summary.stat(max.mag))
}