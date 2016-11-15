extract.voice.features.yaafe <- function(fname){
  # Extract all relevant features
  features = c(amplitude.features(paste0(fname,'.frame.csv'), srate),
               amplitudeModulation.features(paste0(fname,'.ampmod.csv')),
               autocorrelation.features(paste0(fname,'.ac.csv'), srate, stepSize),
               bandHistogramSummary.features(paste0(fname,'.bh.csv')),
               chroma.features(paste0(fname,'.chroma.csv'), 'chroma1'),
               chroma.features(paste0(fname,'.chroma2.csv'), 'chroma2'),
               energy.features(paste0(fname,'.energy.csv')),
               envelope.features(paste0(fname,'.envelshapestat.csv')),
               lpc.features(paste0(fname,'.lpc.csv')),
               lsf.features(paste0(fname,'.lsf.csv')),
               loudness.features(paste0(fname,'.lx.csv')),
               mfcc.features(paste0(fname,'.mfcc.csv'), srate, stepSize),
               magnitudeSpectrum.features(paste0(fname,'.ms.csv')),
               obsi.features(paste0(fname,'.obsi.csv')),
               obsir.features(paste0(fname,'.obsir.csv')),
               odf.features(paste0(fname,'.odf.csv'), srate, stepSize),
               percetualSharpness.features(paste0(fname,'.persharp.csv')),
               percetualSpread.features(paste0(fname,'.perspread.csv')),
               spectralCrestFactorPerBand.features(paste0(fname,'.speccrestband.csv')),
               spectralDecrease.features(paste0(fname,'.specdec.csv')),
               spectralFlatness.features(paste0(fname,'.specflat.csv')),
               spectralFlux.features(paste0(fname,'.specflux.csv')),
               spectralIrregularity.features(paste0(fname,'.specirr.csv')),
               spectralRolloff.features(paste0(fname,'.specroll.csv')),
               spectralShapeStatistics.features(paste0(fname,'.specshapestat.csv')),
               spectralSlope.features(paste0(fname,'.specslope.csv')),
               spectralVariation.features(paste0(fname,'.specvar.csv')),
               temporalShapeStatistics.features(paste0(fname,'.tempstat.csv')),
               zerocrossing.features(paste0(fname,'.zcr.csv')))
  
  return(cbind(data.frame(fname = fname), data.frame(t(features))))
}