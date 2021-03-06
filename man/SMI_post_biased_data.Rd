% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{SMI_post_biased_data}
\alias{SMI_post_biased_data}
\title{SMI posterior for the biased data toy model}
\usage{
SMI_post_biased_data(
  Z,
  Y,
  sigma_z,
  sigma_y,
  sigma_phi,
  sigma_theta,
  sigma_theta_tilde,
  eta = 1
)
}
\arguments{
\item{Z}{Data sampled from the unbiased module}

\item{Y}{Data sampled from the unbiased module}

\item{sigma_z}{Likelihood std dev for Z}

\item{sigma_y}{Likelihood std dev for Y}

\item{sigma_phi}{Prior std dev for phi}

\item{sigma_theta}{Prior std dev for theta}

\item{sigma_theta_tilde}{Prior std dev for theta}

\item{eta}{Degree of influence of the unbiased module into phi}
}
\description{
Calculates the posterior mean and variance of the Semi-Modular Posterior
}
