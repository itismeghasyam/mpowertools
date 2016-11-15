chroma.features <- function(fname, colName){
  chroma = read.table(file = fname, sep = ',', header = F, skip = 5)
  colnames(chroma) = paste(colName, 'coeff',1:12, sep = '.')
  
  return(get.summary.stat(chroma))
}