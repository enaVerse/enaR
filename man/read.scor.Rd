% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.scor.R
\name{read.scor}
\alias{read.scor}
\title{read.scor --- SCOR formatted file into R
in multiple formats
INPUT = file path
OUTPUT = network model in chosen format
S. Borrett and M. Lau | July 2011
------------------------------------
read.scor --- SCOR formatted file into R in multiple formats INPUT = file
path OUTPUT = network model in chosen format S. Borrett and M. Lau | July
2011 ------------------------------------ read.scor --- SCOR formatted file
into R in multiple formats INPUT = file path OUTPUT = network model in
chosen format S. Borrett and M. Lau | July 2011
------------------------------------ Read SCOR Formatted Model}
\usage{
read.scor(file, from.file = TRUE, warn = FALSE)
}
\arguments{
\item{file}{File path or plain text.}

\item{from.file}{States whether the file argument input should be treated as
a file path (TRUE) or plain text (FALSE).}

\item{warn}{Turn on (TRUE) or off (FALSE) warnings.}
}
\value{
Returns the network model in one of several formats. The default
format is a network object used by the statnet package (type="network").
Three other options are the network environ analysis format (type="nea") as
defined by (Fath and Borrett 2006), a list format (type="list") and an edge
list (type="edge.list").
}
\description{
Read in network model data files that are in the SCOR format (REFERENCE).
}
\details{
The SCOR file must be formatted properly. In particular, the number of nodes
on the second line must have the first three characters dedicated to the
total number of nodes and the next three characters should contain the
number of living nodes. That is, the second line of the file should be
formatted as 'xxxyyy' where x and y are the characters for the total number
of nodes and the number of living nodes, respectively. Thus, if the total
number of nodes is 10 and the number of living nodes is 1, then the second
line should read, " 10 1."
}
\references{
Ulanowicz, R.E. and J.J. Kay. 1991. A package for the analysis
of ecosystem flow networks. Environmental Software 6:131-142.

Fath, B. D., Borrett, S. R. 2006. A Matlab function for Network Environ
Analysis.  Environ. Model. Softw. 21, 375-405.
}
\author{
Matthew K. Lau Stuart R. Borrett
}
