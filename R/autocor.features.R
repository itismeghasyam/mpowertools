autocorrelation.features <- function(fname, srate, stepSize){
  ac = read.table(file = fname, skip = 5, header = F, sep = ',')
  ac.sd = apply(ac, 1, sd)
  t.delay = sum(ac.sd<0.1) * stepSize/srate
  t.max = which.max(ac.sd) * stepSize/srate
  
  return(c('timedelay.ac' = t.delay,
           'timemax.ac' = t.max))
}