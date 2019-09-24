quick:  docs install

all:  docs build install check

docs:
	R -e "devtools::document()"
vig:
	R -e "devtools::build_vignettes()"

build:
	(R CMD build --no-build-vignettes .)

install:
	(R CMD INSTALL .)

check:
	(R CMD check --no-manual --no-build-vignettes --ignore-vignettes `ls -t CIDemo_* | head -1`)

test:
	R -f inst/unitTests/test_CIDemo.R

clean:
	- rm CIDemo_*.tar.gz
	- rm -rf CIDemo.Rcheck
