---
output: github_document
---

# imageFilters

Simple image filters in R using the `{magick}` package.

## Installation

```{r}
# Install the dev version from GitHub

devtools::install_github("darck3/imageFilter1.3")

```

## Installation

You can install the development version of imageFilter1.3 from [GitHub](https://github.com/) with:

```{r}
library(magick)
library(imageFilter1.3)

# Load image
my_image <- image_read("C:/Users/ivanv/OneDrive/Desktop/R working directory/ImageFilter/imageFilter1.3/Test image-1.jpg")

# Convert to bitmap (raw RGB array)
my_bitmap <- my_image[[1]]

# Apply greyscale filter
greyscale_img <- apply_filter(my_bitmap, greyscale_filter)
print(greyscale_img)

# Apply cutoff filter
cutoff_img <- apply_filter(my_bitmap, cutoff_filter, cutoff = 128)
print(cutoff_img)
```

## Example


## Filters

Greyscale filter: Converts a pixel to greyscale based on luminance.

Cutoff filter: Converts to black or magenta based on luminance cutoff.

Apply filter: Applies a given filter function to the entire image bitmap.
