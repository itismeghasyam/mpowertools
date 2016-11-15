percetualSharpness.features <- function(fname){
  ps = read.table(fname, skip = 5, sep = ',', header = F)
  colnames(ps) = 'percepsharp'
  
  return(get.summary.stat(ps))
}