% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resetJobs.R
\name{resetJobs}
\alias{resetJobs}
\title{Reset the Computational State of Jobs}
\usage{
resetJobs(ids = NULL, reg = getDefaultRegistry())
}
\arguments{
\item{ids}{[\code{\link[base]{data.frame}} or \code{integer}]\cr
A \code{\link[base]{data.frame}} (or \code{\link[data.table]{data.table}})
with a column named \dQuote{job.id}.
Alternatively, you may also pass a vector of integerish job ids.
If not set, defaults to no job.
Invalid ids are ignored.}

\item{reg}{[\code{\link{Registry}}]\cr
Registry. If not explicitly passed, uses the default registry (see \code{\link{setDefaultRegistry}}).}
}
\value{
[\code{\link{data.table}}] of job ids which have been reset.
  See \code{\link{JoinTables}} for examples on working with job tables.
}
\description{
Resets the computational state of jobs in the \code{\link{Registry}}.
This function automatically checks if any of the jobs to reset is either pending or running.
However, if the implemented heuristic fails, this can lead to inconsistencies in the data base.
Use with care while jobs are running.
}
\seealso{
Other debug: 
\code{\link{getErrorMessages}()},
\code{\link{getStatus}()},
\code{\link{grepLogs}()},
\code{\link{killJobs}()},
\code{\link{showLog}()},
\code{\link{testJob}()}
}
\concept{debug}
