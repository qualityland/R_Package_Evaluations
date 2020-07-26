library("ggplot2")
library("dlstats")

x <- cran_stats(c("checkpoint", "switchr", "renv"))

# downloads
if (!is.null(x)) {
  head(x)
  ggplot(x, aes(end, downloads, group = package, color = package)) +
    geom_line() + geom_point(aes(shape = package))
}

# log(downloads)
if (!is.null(x)) {
  head(x)
  ggplot(x, aes(end, log(downloads), group = package, color = package)) +
    geom_line() + geom_point(aes(shape = package))
}
