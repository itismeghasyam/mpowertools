bandHistogramSummary.features <- function(fname){
  bh = read.table(file = fname, sep = ',', header = F, skip = 5)
  colnames(bh) = paste('BandHistogram.Summary', 1:dim(bh)[2], sep = '.')
  
  return(unlist(bh))
}