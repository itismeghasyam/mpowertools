get.summary.stat <- function(feature){
  mn = apply(feature, 2, mean, na.rm = T)
  names(mn) = paste(names(mn),'mean',sep ='.') 
  
  md = apply(feature, 2, median, na.rm = T)
  names(md) = paste(names(md),'median',sep ='.') 
  
  mx = apply(feature, 2, max, na.rm = T)
  names(mx) = paste(names(mx),'max',sep ='.') 
  
  sd = apply(feature, 2, sd, na.rm = T)
  names(sd) = paste(names(sd),'sd',sep ='.') 
  
  sk = apply(feature, 2, e1071::skewness, na.rm = T)
  names(sk) = paste(names(sk),'skewness',sep ='.') 
  
  kurt = apply(feature, 2, e1071::kurtosis, na.rm = T)
  names(kurt) = paste(names(kurt),'kurtosis',sep ='.') 
  
  return(c(mn, md, mx, sd, sk, kurt))
}