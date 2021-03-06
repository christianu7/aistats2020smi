% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcmc_hpv.R
\name{mcmc_hpv}
\alias{mcmc_hpv}
\title{\preformatted{MCMC procedure for ecological study of HPV and cervical cancer
}}
\usage{
mcmc_hpv(
  HPV,
  hpv_model_whole_stan,
  hpv_model_poisson_stan,
  eta_pois = 1,
  eta_binom = 1,
  n_iter = 10000,
  n_warmup = 1000,
  n_chains_mcmc = 4,
  n_iter_sub = 200,
  out_file_rda = NULL,
  n_cores = 1
)
}
\arguments{
\item{HPV}{Data frame. Data for correlation between human papillomavirus (HPV) prevalence and cervical cancer incidence.}

\item{hpv_model_whole_stan}{stanmodel. The compiled stan model with the powered version of the HPV model.}

\item{hpv_model_poisson_stan}{stanmodel. The compiled stan model with the poisson module of the HPV model.}

\item{eta_pois}{Float. Degree of influence of the poisson module.}

\item{eta_binom}{Float. Degree of influence of the poisson module.}

\item{n_iter}{Integer. Number of iterations in the main MCMC chain.}

\item{n_warmup}{Integer. Number of updates discarded when "warming-up" the MCMC.}

\item{n_chains_mcmc}{Integer. Number of parallel chains produced by the sampler}

\item{n_iter_sub}{Integer. Number of updates in the subchain of the two-stage MCMC}

\item{out_file_rda}{Indicates a file (.rda) where the output should be saved}

\item{n_cores}{Number of cores used by stan in the sampling process.}
}
\description{
MCMC sampling for the ecological study of HPV and cervical cancer.
}
