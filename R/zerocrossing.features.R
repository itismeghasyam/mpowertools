zerocrossing.features <- function(fname){
  zcr = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(zcr) = 'zerocrossin'
  return(get.summary.stat(zcr))
}