
# imageFilters

Simple image filters in R using the `{magick}` package.

## Installation

``` r
# Install the dev version from GitHub

devtools::install_github("darck3/imageFilter1.3")
```

    ## WARNING: Rtools is required to build R packages, but is not currently installed.
    ## 
    ## Please download and install Rtools 4.4 from https://cran.r-project.org/bin/windows/Rtools/.

    ## Using GitHub PAT from the git credential store.

    ## Downloading GitHub repo darck3/imageFilter1.3@HEAD

    ## Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax
    ## global extended headers
    ## Warning in untar2(tarfile, files, list, exdir, restore_times): skipping pax
    ## global extended headers

    ## 
    ## ── R CMD build ─────────────────────────────────────────────────────────────────

    ## WARNING: Rtools is required to build R packages, but is not currently installed.
    ## 
    ## Please download and install Rtools 4.4 from https://cran.r-project.org/bin/windows/Rtools/.

    ##          checking for file 'C:\Users\ivanv\AppData\Local\Temp\Rtmpi8esey\remotes79d0617f72f9\darck3-imageFilter1.3-6592e7a/DESCRIPTION' ...  ✔  checking for file 'C:\Users\ivanv\AppData\Local\Temp\Rtmpi8esey\remotes79d0617f72f9\darck3-imageFilter1.3-6592e7a/DESCRIPTION' (389ms)
    ##       ─  preparing 'imageFilter1.3':
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##       ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##    Omitted 'LazyData' from DESCRIPTION
    ##   ─  building 'imageFilter1.3_0.1.0.tar.gz'
    ##      
    ## 

    ## Installing package into 'C:/Users/ivanv/AppData/Local/R/cache/R/renv/library/imageFilter1.3-2aa33631/windows/R-4.4/x86_64-w64-mingw32'
    ## (as 'lib' is unspecified)

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
