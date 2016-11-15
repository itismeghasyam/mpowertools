lsf.features <- function(fname){
  lsf = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(lsf) = paste('lsf', 1:10, sep = '.')
  
  return(get.summary.stat(lsf))
}