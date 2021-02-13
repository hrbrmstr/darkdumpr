
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/darkdumpr.svg?branch=master)](https://travis-ci.org/hrbrmstr/darkdumpr)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# darkdumpr

Query darkdump.io for Dark Web Content

## Description

Query darkdump.io for Dark Web Content.

## What’s Inside The Tin

The following functions are implemented:

-   `search_noir`: Query darkdump.io for Dark Web Content

## Installation

``` r
remotes::install_git("https://git.rud.is/hrbrmstr/darkdumpr.git")
# or
remotes::install_gitlab("hrbrmstr/darkdumpr")
# or
remotes::install_bitbucket("hrbrmstr/darkdumpr")
# or
remotes::install_github("hrbrmstr/darkdumpr")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(darkdumpr)

# current version
packageVersion("darkdumpr")
## [1] '0.1.0'
```

``` r
res <- tibble::as_tibble(search_noir("ransomware"))

cat(res$description[1])
##  Surfacing The News From The DeepWeb
## 
## Menu
## 
##   * Home
##   * News & Articles
##   * Markets List
##   * Markets Chart
##   * Vpn's Chart
##   * Bitcoin Casinos
##   * BTC Mixer
##   * Q&A ~ Ask Here!
##   * Videos
##   * Contact Us
## 
## Home » Articles » An overview of bitcoin <em>ransomware</em> attack campaigns
## 
## # An overview of bitcoin
```

## darkdumpr Metrics

| Lang | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| R    |        3 | 0.38 |  26 | 0.36 |           8 | 0.16 |       17 | 0.18 |
| Rmd  |        1 | 0.12 |  10 | 0.14 |          17 | 0.34 |       30 | 0.32 |
| SUM  |        4 | 0.50 |  36 | 0.50 |          25 | 0.50 |       47 | 0.50 |

clock Package Metrics for darkdumpr

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
