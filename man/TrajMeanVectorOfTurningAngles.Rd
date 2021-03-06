% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/straightness.R
\name{TrajMeanVectorOfTurningAngles}
\alias{TrajMeanVectorOfTurningAngles}
\title{Mean vector of turning angles}
\usage{
TrajMeanVectorOfTurningAngles(trj, compass.direction = NULL)
}
\arguments{
\item{trj}{Trajectory object.}

\item{compass.direction}{If not \code{NULL}, step angles are calculated
relative to this angle (in radians), otherwise they are calculated relative
to the previous step angle.}
}
\value{
A complex number \code{r} which represents the mean vector,
  \code{Mod(r)} is the length of the mean vector which varies between 0 and
  1, \code{Arg(r)} is the angle.
}
\description{
Returns the mean vector of the turning angles, as defined by Batschelet,
(1981). A unit vector is created for each turning angle in the trajectory,
and the centre-of-mass/mean vector is returned.
}
\details{
According to Batschelet (1981), \code{r} may serve as a straightness index
ranging from 0 to 1, where \code{r} is the length of the mean vector of
turning angles of a trajectory with constant step length. Values of \code{r}
near 1 indicating straighter paths. Hence, \code{r =
Mod(TrajMeanVectorOfTurningAngles(trj))}, assuming that \code{trj} has a
constant step length (e.g. has been rediscretized).
}
\references{
Batschelet, E. (1981). Circular statistics in biology. ACADEMIC PRESS, 111
FIFTH AVE., NEW YORK, NY 10003, 1981, 388.
}
\seealso{
\code{\link{TrajStraightness}}, \code{\link{TrajAngles}},
  \code{\link{TrajRediscretize}} for resampling a trajectory to a constant
  step length, \code{\link{TrajResampleTime}} for resampling a trajectory to
  a constant step time.
}
