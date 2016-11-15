odf.features <- function(fname, srate, stepSize){
  odf = read.table(fname, skip = 5, sep = ',', header = F)
  onset.max = which.max(odf$V1[1:200]) * stepSize/srate
  return(c('onset.max' = onset.max))
}