\name{custom_css}
\alias{custom_css}
\title{Generate Custom css for RStudio + knitr}
\usage{
  custom_css(loc = file.path(getwd(), "REPORT"),
    style.css = NULL)
}
\arguments{
  \item{loc}{Path to the report location where the custom
  css should be placed.}

  \item{style.css}{An optional path to a style.css file
  that will be used as the ~/css/style.css.}
}
\description{
  Generate the components necessary for a custom css for
  use with RStudio and knitr.
}
\details{
  The user must add the custom contents to the custom css
  located in ~/css/style.css
}
\note{
  The user has to source before the custom styles will be
  applied. Open the style.R as the active tab in RStudio,
  check the `Source on Save` box and the click the save
  icon.
}
\references{
  \url{http://www.rstudio.com/ide/docs/authoring/markdown_custom_rendering}
}

