\name{geocode}
\alias{geocode}
\title{Geocode using the Google Maps}
\source{
  The code is adapted from
  \href{http://www.jose-gonzalez.org/using-google-maps-api-r/}{Jose
  Gonzales}. This function is very similar to the
  \code{geocode} function in the \code{ggmap} package.
}
\usage{
  geocode(location,
    output = c("summary", "longlat", "detail", "json", "list", "matches", "url"),
    item, region = "AU", ...)
}
\arguments{
  \item{location}{vector of location strings.}

  \item{output}{string specifying desired output.}

  \item{region}{two letter country code to determine search
  bias.}

  \item{item}{numeric value specifying which result to
  return if there are multiple matches.}

  \item{...}{additional parameters passed to the Google
  API.}
}
\description{
  Interrogate the Google Maps API to geocode a specified
  location. Geocoding provides longitude, latitude and some
  additional data. including full address where available.
}
\details{
  The Google API attempts a fuzzy match of the specified
  location(s). Where the location is ambiguous, a single
  result will be returned and the specified search bias
  region will used to assist in making a selection.

  Notice there is a limit of 2,500 calls per day.
  Currently, the function does not enforce this limit, so
  exercise caution!

  Location type, for more info check here:
  \url{https://developers.google.com/maps/documentation/directions/}
  "ROOFTOP" indicates that the returned result is a precise
  geocode for which we have location information accurate
  down to street address precision. "RANGE_INTERPOLATED"
  indicates that the returned result reflects an
  approximation (usually on a road) interpolated between
  two precise points (such as intersections). Interpolated
  results are generally returned when rooftop geocodes are
  unavailable for a street address. "GEOMETRIC_CENTER"
  indicates that the returned result is the geometric
  center of a result such as a polyline (for example, a
  street) or polygon (region). "APPROXIMATE" indicates that
  the returned result is approximate.
}
\examples{
\dontrun{
geocode("64 Reservoir St Surry Hills")
geocode("64 Reservoir St Surry Hills", output="longlat")
geocode("64 Reservoir St", output="matches")
geocode("64 Reservoir St", output="list")
geocode("64 Reservoir St", output="list", country="AU")
}
}

