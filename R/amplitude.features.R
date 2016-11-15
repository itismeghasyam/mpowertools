## Extract amplitude related features
amplitude.features <- function(fname, srate){
  fr = read.table(file = fname, skip = 5, header = F, sep = ',')
  
  ampdt = dim(fr)[2]/srate
  
  l1amp = apply(fr, 1, function(x){
    mean(abs(x), na.rm = T)
  })
  
  l2amp = apply(fr, 1, function(x){
    sqrt(mean(x^2, na.rm = T))
  })

  l1sh = abs(diff(l1amp))/ampdt
  l2sh = abs(diff(l2amp))/ampdt
  
  shimmer = data.frame(l1.shimmer = l1sh,
                       l2.shimmer = l2sh)
  
  return(get.summary.stat(shimmer))
}