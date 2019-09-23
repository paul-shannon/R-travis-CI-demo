quick:  docs install

all:  docs vig build install check biocCheck

docs:
	R -e "devtools::document()"
vig:
	R -e "devtools::build_vignettes()"

build:
	(cd ..; R CMD build --no-build-vignettes R-travis-CI-demo)

install:
	(cd ..; R CMD INSTALL  R-travis-CI-demo)

check:
	(cd ..; R CMD check --no-manual --no-build-vignettes --ignore-vignettes `ls -t CIDemo_* | head -1`)

test:
	R -f inst/unitTests/test_CIDemo.R
