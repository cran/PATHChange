\name{PATHChangeVenn}
\alias{PATHChangeVenn}
\title{PATHChangeVenn}
\description{The results of PATHChange are presented through Venn diagrams that provide the consensus of differentially expressed pathways using the statistical tests for the chosen significance level.}
\usage{
PATHChangeVenn(p.value, p, writePDF, destDIR)
}
\arguments{
  \item{p.value}{The result of the PATChange function.}
  \item{p}{Significance level}
  \item{writePDF}{TRUE for write a .pdf file result}
  \item{destDIR}{Destination folder for .pdf file.}
}
\value{
\item{VennDiagram}{A venn diagram with the consensus of the statistical tests.}
}
\author{Carla A. R. S. Fontoura}
\seealso{\code{\link{PATHChange}}}
\examples{
pval <- list(data.frame(Pathway=paste("Path", 1:10, sep="_"), 
                        Activity=c(0.50478,0.5019,0.49059,0.49056,0.48591,0.49457,
                                   0.49228,0.49628,0.48908,0.48698),
                        Bootstrap=c(0.06911578,0.11415555,0.98059024,0.30543333, 
                                    0.02051875,0.00098,0.12326666,0.578624,0.01206153,
                                    0.86294),
                        Fisher=c(0.32619656,0.00310826,0.26249225,0.26389102,0.00060358,
                                 0.00015427,0.01796717,0.00069173,8.22E-06,0.00310826),
                        Wilcoxon=c(0.11862404,0.00502450,0.00543268,1.32E-10,0.22675787,
                                   8.45E-06,0.46767425,4.51E-17,9.11E-08,0.00467674)))
PATHChangeVenn(p.value=pval, p=0.05, writePDF=FALSE)
}