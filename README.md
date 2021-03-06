
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Semi-Modular Inference

<!-- badges: start -->

[![License:
MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://cran.r-project.org/web/licenses/MIT)
[![devel-version](https://img.shields.io/badge/devel%20version-0.2.0-blue.svg)](https://github.com/christianu7/aistats2020smi)
[![arXiv](https://img.shields.io/badge/arXiv-2003.06804-b31b1b.svg)](https://arxiv.org/abs/2003.06804)
<!-- badges: end -->

This repo contains code for our AISTATS article on **Semi-Modular
Inference**.

Semi-Modular Inference (SMI) is a modification of Bayesian inference in
multi-modular settings, which enables tunable and directed flow of
information between modules.

For an introduction to SMI, we invite you to watch our [slideslive
presentation](https://slideslive.com/38930337) (best on 1.5x),

[<img src="inst/figures/slideslive_smi.png" width="70%" style="display: block; margin: auto;" />](https://slideslive.com/38930337)

## Citation

If you find Semi-Modular Inference relevant for your scientific
publication, we encourage you to add the following reference:

``` bibtex
@InProceedings{Carmona2020smi,
  title = {Semi-Modular Inference: enhanced learning in multi-modular models by tempering the influence of components},
  author = {Carmona, Chris U. and Nicholls, Geoff K.},
  booktitle = {Proceedings of the 23rd International Conference on Artificial Intelligence and Statistics, AISTATS 2020},
  year = {2020},
  editor = {Silvia Chiappa and Roberto Calandra},
  volume = {108},
  pages = {4226--4235},
  series = {Proceedings of Machine Learning Research},
  month = {26--28 Aug},
  publisher = {PMLR},
  pdf = {http://proceedings.mlr.press/v108/carmona20a/carmona20a.pdf},
  url = {http://proceedings.mlr.press/v108/carmona20a.html},
  arxivId = {2003.06804},
}
```

## Installation

You can install the devel version of aistats2020smi from our github
repository

``` r
#install.packages("devtools")
devtools::install_github("christianu7/aistats2020smi")
```

## Reproducibility

The main article and supplementary material can be reproduced entirely
using a `.Rnw` file included in this repo. Executing the following
command will generate a pdf file in your current directory:

``` r
print( getwd() )
aistats2020smi::generate_article( out_dir=getwd() )
```

If you prefer to keep and analyse intermediate outputs, consider
executing the following commands:

``` r
path = "~/smi_article"
dir.create(path)
aistats2020smi::download_mcmc_results( mcmc_dir = path )
aistats2020smi::generate_article( out_dir = path, mcmc_dir = path )
```

## Coming soon, Variational SMI

You may also be interested in our current work on Scalable Semi-Modular
Inference via Normalizing flows. Here is a teaser of our current work

[<img src="inst/figures/youtube_vsmi.png" width="60%" style="display: block; margin: auto;" />](https://www.youtube.com/watch?v=EmpoUiLqk2o)
