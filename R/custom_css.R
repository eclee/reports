#' Generate Custom css for RStudio + knitr
#'
#' Generate the components necessary for a custom css for use with RStudio and 
#' knitr.
#'
#' @param loc Path to the report location where the custom css should be placed.
#' @param style.css An optional path to a style.css file that will be used as 
#' the ~/css/style.css.
#' @details The user must add the custom contents to the custom css located in  
#' ~/css/style.css
#' @note The user has to source before the custom styles will be applied. Open 
#' the style.R as the active tab in RStudio, check the `Source on Save` box and 
#' the click the save icon.
#' @references
#' \url{http://www.rstudio.com/ide/docs/authoring/markdown_custom_rendering} 
#' @export
custom_css <- function(loc = file.path(getwd(), "REPORT"), style.css = NULL) {
	
	## Check css directory existence
    if (!file.exists(file.path(loc, "css"))) {
        cssloc <- folder(folder.name = file.path(loc, "css"))
    } else {
    	cssloc <- file.path(loc, "css")
        warning(paste(file.path(loc, "css"), 
            "already exists.\n Directory `css` not generated"))	
    }
    
    ## check style.css existence/create style.css
    if (!file.exists(file.path(loc, "css", "style.css"))) {
    	if (is.null(style.css)) {
            cat("", file=file.path(cssloc, "style.css"))
    	} else {
    		sty <- suppressWarnings(readLines(style.css))
            cat(paste(sty, collapse="\n"), file=file.path(cssloc, "style.css"))
    	}
    }  else {
        warning(paste(file.path(loc, "css", "style.css"), 
            "already exists.\n File `~css/style.css` not generated"))	
    }
    
    ## Create the style.R
    x <- c("options(rstudio.markdownToHTML =", 
        "  function(inputFile, outputFile) {",      
        "    require(markdown)",
        "    markdownToHTML(inputFile, outputFile, stylesheet=file.path(getwd(), \"css/style.css\"))",
        "  }",
        ")\n"
    )
    cat(paste(x, collapse = "\n"), file = file.path(loc, "style.R"))
    
    ## Direct where to change css options
    message(paste0("A custom css has been generated for your report.\n\n", 
        "Make changes/additions via:\n", file.path(cssloc, "style.css")))
}