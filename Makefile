# CFDA Lab Onboarding Guide
# Usage:
#   make        Build the PDF
#   make clean  Remove LaTeX auxiliary files
#   make distclean  Remove auxiliary files and the generated PDF

MAIN = cfda_lab_onboarding_guide
TEX  = $(MAIN).tex
PDF  = $(MAIN).pdf

LATEX = pdflatex
LATEXFLAGS = -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean

all: $(PDF)

$(PDF): $(TEX) cfda_clip_labs.png
	$(LATEX) $(LATEXFLAGS) $(TEX)
	$(LATEX) $(LATEXFLAGS) $(TEX)

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz

distclean: clean
	rm -f $(PDF)
