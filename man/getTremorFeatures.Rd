% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getTremorFeatures.R
\name{getTremorFeatures}
\alias{getTremorFeatures}
\title{extracts features from accelerometer and gyroscope reading of tremor task handInLap or handAtShoulderLength JSON data file}
\usage{
getTremorFeatures(tremorJsonFileLoc, windowLen = 256, freqRange = c(1,
  25), ovlp = 0.5)
}
\arguments{
\item{tremorJsonFileLoc}{path to tremor accelerometer json file}
}
\value{
data frame of tremor features
}
\description{
extracts features from accelerometer and gyroscope reading of tremor task handInLap or handAtShoulderLength JSON data file
}
\author{
Thanneer Malai Perumal, Meghasyam Tummalacherla
}
