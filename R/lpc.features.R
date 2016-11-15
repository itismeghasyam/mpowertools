lpc.features <- function(fname){
  lpc = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(lpc) = paste('lpc', 1:2, sep = '.')
  
  return(get.summary.stat(lpc))
}