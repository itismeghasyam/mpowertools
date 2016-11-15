percetualSpread.features <- function(fname){
  ps = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(ps) = 'percepspread'
  
  return(get.summary.stat(ps))
}