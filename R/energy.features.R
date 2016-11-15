energy.features <- function(fname){
  en = read.table(file = fname, skip = 5, header = F, sep = ',')
  colnames(en) = 'energy'

  return(get.summary.stat(en))
}