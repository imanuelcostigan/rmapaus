\name{find_region}
\alias{find_region}
\alias{find_region_point}
\title{Find region for a location}
\usage{
  find_region(location, map, ...)

  find_region_point(point, map)
}
\arguments{
  \item{location}{vector of string locations}

  \item{map}{SpatialPolygon object}

  \item{point}{numeric vector of latitude and longitude}

  \item{...}{additional parameters passed to
  \code{geocode}}
}
\description{
  Find region for a location
}
\details{
  Checks each region in map to determine with it contains
  the specified point. Returns as list of the ids of each
  region containing the point.
}
\examples{
\dontrun{
coord <- geocode("64 Reservoir St Surry Hills", "longlat")
ssd <- get_mapaus("SSD")


region <- find_region_point(coord, ssd)
ssd@data[region,]

find_region("64 Reservoir St Surry Hills", ssd)

rm(coord, ssd)
}
}

