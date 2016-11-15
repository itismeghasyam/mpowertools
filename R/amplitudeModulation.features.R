amplitudeModulation.features <- function(fname){
  # Extract amplitude modulation features
  amp.mod = read.table(file = fname, skip = 5, header = F, sep = ',')
  
  colnames(amp.mod) =  c('Tremolo.Max.Freq', 'Tremolo.DiffEnergy1',
                         'Tremolo.DiffEnergy2', 'Tremolo.MaxDiffFreq1',
                         'Grain.Max.Freq', 'Grain.DiffEnergy1',
                         'Grain.DiffEnergy2', 'Grain.MaxDiffFreq1')
  
  amp.mod.features = c('Tremolo.Max.Freq' = max(amp.mod$Tremolo.Max.Freq, na.rm = T),
                       'Grain.Max.Freq' = max(amp.mod$Grain.Max.Freq, na.rm = T))
  
  amp.mod = dplyr::select(amp.mod, -Tremolo.Max.Freq, -Grain.Max.Freq)
  return(c(amp.mod.features, get.summary.stat(amp.mod)))
}