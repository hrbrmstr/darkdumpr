.darkdumpr_ua <- "Mozilla/5.0 (Compatible; r-darkdumpr/1.0; https://gitlab.com/hrbrmstr/darkdumpr)"

#' Query darkdump.io for Dark Web Content
#'
#' @param query &lt;chr> terms to search (supports
#'        [darkdump.io advanced search composition](https://darksearch.io/dorks)).
#' @param page pagination control
#' @return data frame with a "`metadata`" atttribute containing pagination info
#' @export
#' @examples
#' search_noir("ransomware")
search_noir <- function(query, page = 1) {

  httr::GET(
    url = "https://darksearch.io/api/search",
    query = list(
      query = query[1],
      page = page[1]
    ),
    httr::user_agent(.darkdumpr_ua)
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  if (hasName(out, "data")) {
    ret <- out$data
    out$data <- NULL
    attr(ret, "metadata") <- out
    ret
  } else {
    out
  }

}