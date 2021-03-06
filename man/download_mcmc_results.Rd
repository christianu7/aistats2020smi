% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_mcmc_results.R
\name{download_mcmc_results}
\alias{download_mcmc_results}
\title{\preformatted{Download MCMC results from Carmona and Nicholls (2020)
}}
\usage{
download_mcmc_results(
  mcmc_dir = "./smi_mcmc",
  url = "https://chriscarmona.me/files/aistats2020smi_mcmc_results.zip"
)
}
\arguments{
\item{mcmc_dir}{Output directory where the files with the MCMC will be stored.}

\item{url}{a character string naming the URL of a resource to be downloaded}
}
\value{
The function will generate a pdf corresponding to the statistical supplement of Styring et al. (2020)
}
\description{
\preformatted{Downloads the MCMC results associated with the article Carmona and Nicholls (2020).
The function downloads a .zip file from the authors website and store it in the specified output folder.
}
}
