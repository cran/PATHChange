\name{PATHChange-package}
\alias{PATHChange-package}
\docType{package}
\title{
\packageTitle{PATHChange}
}
\description{
\packageDescription{PATHChange}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{PATHChange}
\packageIndices{PATHChange}

PATHChange is a multi-statistic approach designed to improve the detection of differentially expressed pathways in transcriptomic studies. The script was designed to perform the analysis over experimental data that include control samples.

The program uses four functions. The first is the data pre-processing called PATHChangeDat, which comprises the download of Matrix Series Files from GEO, average over the expression values of repeated genes and histology combinations steps. The next process is PATHChangeList, which is basically the selection of the pathways. After this, PATHChange performs the main function in the PATHChange package. The PATHChange function perform the statistical analysis, which involves calculating pathway activity, application of the bootstrap, Wilcoxon and Fisher tests, and determination of the false discovery rate (FDR) correction. Finally, the last function PATHChangeVenn generates the  presentation of the results in the form of a Venn diagram of the diferentially expressed pathways consensus.

The program uses two input files: 'Genes', all genes present in the database where the pathways were obtained and 'filePathway' with the pathways to be evaluated.
}
\author{
\packageAuthor{PATHChange}

Maintainer: \packageMaintainer{PATHChange}
}
\references{
Efron, B.(1979) Bootstrap methods: another look at the jacknife. \emph{The Annals of Statistics} \bold{7}. 

Wilcoxon, F. (1945) Individual comparisons by ranking methods. \emph{Biometrics bulletin} \bold{1(6)}, 80--83.

Fisher, R.A. (1934) Statistical methods for research workers. In: Crew, F.A.E., Cutler, D.W. (eds.) Biological Monographs and Manuals. Oliver And Boyd Tweeddale Court ; Edinburgh ; Paternoster Row ; London

Benjamini, Y. and Hochberg, Y. (1995) Controlling the false discovery rate: a practical and powerful approach to multiple testing. \emph{Journal of the Royal Statistical Society}, Series B (Methodological) \bold{57(1)}, 289--300 
}
\keyword{ package }

