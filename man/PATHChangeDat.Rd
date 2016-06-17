\name{PATHChangeDat}
\alias{PATHChangeDat}
\title{PATHChangeDat}
\description{PATHChangeDat is the first step of the PATChange package. This function performs a array information step. For this, PATHChangeDat download the Matrix Series Files from GEO database.}
\usage{
PATHChangeDat(eDat, DataSet, NumbSample, Genes, HistComp, hc, writeRDS, destDIR)
}
\arguments{
  \item{eDat}{Input dataset file name (tab delimited (*.csv) format) containing the expression data for the probes and symbols from the samples.}
  \item{DataSet}{GEO dataset series (e.g. 'GSE4186').}
  \item{NumbSample}{Number of samples in dataset.}
  \item{Genes}{Genes file.}
  \item{HistComp}{TRUE for more than one histological comparison. You may want to set this to FALSE if you already know which histological comparison you wish to do.}
  \item{hc}{Is a character string required if histComparison argument is set to FALSE defining the specific histological comparison (e.g. hc=c('colon normal', 'colon adenoma')).}
  \item{writeRDS}{TRUE for write a .rds file result.}
  \item{destDIR}{Destination folder for .rds file.}
}
\details{In the case of repeated genes in the array, the PATHChangeDat performs an average over their expression values. This ensures that the probability of choosing each gene in the Bootstrap is the same. Many GEO series contains more than a single combination of tissues to be studied, using PATHChangeDat, the user will be prompted to choose different histological comparisons in the study.}
\value{
\item{MeanData}{Tables with all histological comparisons.}
}
\references{
http://www.ncbi.nlm.nih.gov/geo
}
\author{Carla A. R. S. Fontoura}
\examples{
# For Ontocancro pathways, you can download a file with all genes from 
# http://ontocancro.inf.ufsm.br/download/genes_ontocancro.zip

require(rlist)
eDat<-system.file("extdata", "eDat.csv", package = "PATHChange")
genes<-system.file("extdata", "genes.txt", package="PATHChange")

\dontrun{PATHChangeDat(eDat=eDat, DataSet="GSE35972", NumbSample=6, Genes=genes, 
              HistComp=FALSE, hc=c("untreated", "treated with"), writeRDS=FALSE)}
\dontrun{MeanData <- list.load(file.path(tempdir(),"MeanData.rds"))}
}