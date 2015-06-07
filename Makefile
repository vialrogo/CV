# makefile para a compilação do documento

BASE_NAME = cv

LATEX     = latex
PDFLATEX  = xelatex

pdf: $(BASE_NAME).pdf

$(BASE_NAME).pdf: $(BASE_NAME).tex 
	$(PDFLATEX) $<
	$(PDFLATEX) $< 

clean:
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
		  *.aux *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.out \
	      $(BASE_NAME)*.lof $(BASE_NAME)*.lot \
		  $(BASE_NAME)*.pdf $(BASE_NAME)*.idx

all: $(BASE_NAME).tex 
	$(PDFLATEX) $<
	$(PDFLATEX) $<
	$(PDFLATEX) $<
	rm -f $(BASE_NAME)*.ps $(BASE_NAME)*.dvi *.log \
	      *.aux *.blg *.toc *.brf *.ilg *.ind \
	      missfont.log $(BASE_NAME)*.bbl $(BASE_NAME)*.out \
	      $(BASE_NAME)*.lof $(BASE_NAME)*.lot \
		  $(BASE_NAME)*.idx #$(BASE_NAME)*.pdf 
