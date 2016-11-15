obsi.features <- function(fname){
  obsi = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(obsi) = paste0('obsi.cf',1:9)
  
  return(get.summary.stat(obsi))
}