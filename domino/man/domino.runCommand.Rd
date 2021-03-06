\name{domino.runCommand}
\alias{domino.runCommand}
\encoding{UTF-8}
\title{
domino.runCommand
}
\description{
Runs domino client command and runs success callback or shows failure message
}
\usage{
  domino.runCommand(commandAndArgs, successCallback = domino.OK,
             failureMessage = "Executing the command failed",
             stdInput = FALSE)
}
\arguments{
  \item{commandAndArgs}{
The \code{commandAndArgs} argument is a string that matches standard domino
client's syntax,
ex. \code{"get quick-start"} or \code{"download"}.
}
  \item{successCallback}{
A function that will be called when domino command executes successfuly.
Defaults to noop function
}
  \item{failureMessage}{
A string representing failure message that should be printed when command fails.
Has default value.
}
  \item{stdInput}{
Internal string data that is pushed to domino client's stdio streams.
Default is no stdio stream input. 
}
}
\examples{
\dontrun{
    success <- function() {
      print("Success!")
    }
    domino.runCommand("run main.R 1 2 3",success, "failed to succeed")
    # Runs command "run main.R 1 2 3" and 
    # calls 'success' function if domino command ends successfuly.
    # Prints error message  - "failed to succeed" if domino command fails.}
}
\keyword{ command }

