\name{RF}
\alias{RF}
\title{Slidify Shortcut to Include reveal.js Animated Fragments}
\usage{
  RF(print = FALSE, copy2clip = TRUE)
}
\arguments{
  \item{print}{logical.  If \code{TRUE}
  \code{\link[base]{cat}} prints the output to the console.
  If \code{FALSE} returns to the console.}

  \item{copy2clip}{logical.  If \code{TRUE} attempts to
  copy the output to the clipboard.}
}
\description{
  Slidify uses \code{<script> $('ul.incremental
  li').addClass('fragment') </script>} to include animated
  fragments (see
  \href{https://github.com/ramnathv/slidifyExamples/blob/gh-pages/examples/revealjs/index.Rmd}{this
  example}) in reveal.js slides.  This is required per each
  slide.  Using \code{`r RF()`} reduces the typing invloved
  with this action.
}
\examples{
## RF()
}

