mfcc.features <- function(fname, srate, stepSize){
  mfcc.cf = read.table(file = fname, sep = ',', header = F, skip = 5)
  
  colnames(mfcc.cf) = paste0('mfcc.cf', 1:13)
  mfcc.feature = get.summary.stat(mfcc.cf)
  
  # Get mfcc jitter
  dt = seq(0, (stepSize/srate) * dim(mfcc.cf)[1], length.out = dim(mfcc.cf)[1])
  mfcc.cfj = abs(diff(data.matrix(mfcc.cf))/diff(dt))
  colnames(mfcc.cfj) = paste0('mfcc.cfj',1:13)
  
  mfcc.feature = c(mfcc.feature, get.summary.stat(mfcc.cfj))
  
  return(mfcc.feature)
}