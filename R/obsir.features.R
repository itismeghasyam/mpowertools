obsir.features <- function(fname){
  obsir = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(obsir) = paste0('obsir.cf',1:dim(obsir)[2])
  
  return(get.summary.stat(obsir))
}