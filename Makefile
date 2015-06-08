BASE_NAME = cv
LATEX     = latex
PDFLATEX  = xelatex
LANG?			= pt

pdf: $(BASE_NAME).$(LANG).tex 
	$(PDFLATEX) $<
	$(PDFLATEX) $< 

clean:	
	rm -f *.log *.aux *.blg *.toc *.brf *.ilg *.ind $(BASE_NAME).$(LANG)*.{bbl,out,lof,lot}

all: pdf clean
