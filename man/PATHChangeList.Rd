\name{PATHChangeList}
\alias{PATHChangeList}
\title{PATHChangeList}
\description{This function reads the file 'filePathway.txt' to organize the pathways separately in lists.}
\usage{
PATHChangeList(filePathway, writeRDS, destDIR)
}
\arguments{
  \item{filePathway}{The 'filePathway.txt' file.}
  \item{writeRDS}{TRUE for write a .rds file result}
  \item{destDIR}{Destination folder for .rds file.}
}
\value{
\item{path}{An object of class "list" is returned and saved in "rds" format.}
}
\author{Carla A. R. S. Fontoura}
\examples{
# For Ontocancro pathways, you can download a file with all pathways from 
# http://ontocancro.inf.ufsm.br/download/BigPathways.zip

filePathway<-system.file("extdata", "BigPathways.txt", package = "PATHChange")

PATHChangeList(filePathway = filePathway, writeRDS = FALSE)
require(rlist)
path <- list.load(file.path(tempdir(),"path.rds"))
}