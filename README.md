
# imageFilters

Simple image filters in R using the `{magick}` package.

## Installation

You can install the development version of imageFilter1.3 from
[GitHub](https://github.com/) with:

``` r
library(magick)
```

    ## Linking to ImageMagick 6.9.12.98
    ## Enabled features: cairo, freetype, fftw, ghostscript, heic, lcms, pango, raw, rsvg, webp
    ## Disabled features: fontconfig, x11

``` r
library(imageFilter1.3)

# Load image
my_image <- image_read("C:/Users/ivanv/OneDrive/Desktop/R working directory/ImageFilter/imageFilter1.3/Test image-1.jpg")

# Convert to bitmap (raw RGB array)
my_bitmap <- my_image[[1]]

# Apply greyscale filter
greyscale_img <- apply_filter(my_bitmap, greyscale_filter)
print(greyscale_img)
```

    ##   format width height colorspace matte filesize density
    ## 1    PNG   528    393       sRGB FALSE        0   72x72

![](README_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

``` r
# Apply cutoff filter
cutoff_img <- apply_filter(my_bitmap, cutoff_filter, cutoff = 128)
print(cutoff_img)
```

    ##   format width height colorspace matte filesize density
    ## 1    PNG   528    393       sRGB FALSE        0   72x72

![](README_files/figure-gfm/unnamed-chunk-2-2.png)<!-- -->

## Example

## Filters

Greyscale filter: Converts a pixel to greyscale based on luminance.

Cutoff filter: Converts to black or magenta based on luminance cutoff.

Apply filter: Applies a given filter function to the entire image
bitmap.
