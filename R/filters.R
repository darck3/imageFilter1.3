#' Greyscale filter
#'
#' Applies a greyscale transformation to a single RGB vector.
#'
#' @param rgb_vec A vector of 3 raw values representing Red, Green, and Blue.
#'
#' @return A greyscale RGB vector as a raw vector of length 3.
#' @export
greyscale_filter <- function(rgb_vec) {
  grey_val <- as.raw(round(
    0.299 * as.integer(rgb_vec[1]) +
      0.587 * as.integer(rgb_vec[2]) +
      0.114 * as.integer(rgb_vec[3])
  ))
  rep(grey_val, 3)
}

#' Cutoff filter
#'
#' Applies a binary cutoff transformation to a single RGB vector.
#'
#' @param rgb_vec A vector of 3 raw values representing Red, Green, and Blue.
#' @param cutoff A numeric value (default = 127). Pixels with greyscale value below the cutoff become black; others become magenta.
#'
#' @return A transformed RGB vector as a raw vector of length 3.
#' @export
cutoff_filter <- function(rgb_vec, cutoff = 127) {
  grey_val <- 0.299 * as.integer(rgb_vec[1]) +
    0.587 * as.integer(rgb_vec[2]) +
    0.114 * as.integer(rgb_vec[3])
  if (grey_val < cutoff) {
    as.raw(c(0, 0, 0))  # black
  } else {
    as.raw(c(255, 0, 255))  # magenta
  }
}

#' Apply filter to bitmap
#'
#' Applies a custom filter function to each pixel of a bitmap image.
#'
#' @param bitmap A 3D raw array (e.g., from \code{image[[1]]}) representing the image.
#' @param filter_func A function that transforms an RGB vector (e.g., \code{greyscale_filter} or \code{cutoff_filter}).
#' @param ... Additional arguments passed to \code{filter_func}.
#'
#' @return A magick image object with the filter applied.
#' @export
apply_filter <- function(bitmap, filter_func, ...) {
  dims <- dim(bitmap)

  new_bitmap <- bitmap

  for (x in 1:dims[2]) {
    for (y in 1:dims[3]) {
      rgb_vec <- bitmap[, x, y]
      new_bitmap[, x, y] <- filter_func(rgb_vec, ...)
    }
  }

  image_read(new_bitmap)
}
