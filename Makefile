BASE_NAME = cv
LATEX     = latex
PDFLATEX  = xelatex

pdf: $(BASE_NAME).tex 
	$(PDFLATEX) $<
	$(PDFLATEX) $< 

clean:	
	rm -f *.log *.aux *.blg *.toc *.brf *.ilg *.ind $(BASE_NAME)*.{bbl,out,lof,lot}

all: pdf clean
