loudness.features <- function(fname){
  lx = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(lx) = paste0('loudness.cf',1:24) 
  
  return(get.summary.stat(lx))
}