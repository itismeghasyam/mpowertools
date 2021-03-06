% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getKineticTremorFeatures.R
\name{getKineticTremorFeatures}
\alias{getKineticTremorFeatures}
\title{extracts features from tremor task handToNose accelerometer and gyroscope JSON data file}
\usage{
getKineticTremorFeatures(tremorJsonFileLoc, windowLen = 256,
  freqRange = c(1, 25), ovlp = 0.5)
}
\arguments{
\item{tremorJsonFileLoc}{path to tremor accelerometer json file}
}
\value{
data frame of tremor features
}
\description{
extracts features from tremor task handToNose accelerometer and gyroscope JSON data file
}
\author{
Thanneer Malai Perumal, Meghasyam Tummalacherla
}
