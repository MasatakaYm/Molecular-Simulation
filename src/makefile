FILE=main
TARGET=$(FILE).pdf

#
# Tex commantds
#
TEX=uplatex
BIBTEX=upbibtex
TEX2PDF=uptex2pdf
DVI2PDF=dvipdfmx
TEX2PDFFLAG = -e -l

.SUFFIXES: .tex .dvi .aux .log .toc .lof .lot .pdf .ps .bbl .bib .blg

SRCS=$(shell find . -name '*.tex' -and ! -name 'main.tex' -and ! -name 'preface.tex' -and ! -name 'title.tex')
DVIS=$(patsubst %.tex, %.dvi, $(SRCS))
BIBS=$(patsubst %.tex, %.bib, $(SRCS))
BBLS=$(patsubst %.bib, %.bbl, $(BIBS))

all: $(TARGET)

open:
	open $(FILE).dvi

$(TARGET): main.tex preface.tex title.tex $(SRCS) $(DVIS)
	$(TEX) main.tex preface.tex title.tex $(SRCS)
	$(TEX) main.tex preface.tex title.tex $(SRCS) # To generete index correctly.

pdf: $(FILE).dvi
	$(DVI2PDF) $<
	mv $(patsubst %.dvi, %.pdf, $<) ../pdf/

%.dvi: %.tex
	sh ./scripts/compile.sh $(patsubst %.tex, %, $<)

%.bbl: %.bib %.aux
	$(BIBTEX) $(patsubst %.bib, %, $<)    # 2. make bbl file.

%.aux: %.tex
	$(TEX) $<  # 1. Output reference information to aux file.


clean:
	rm -r $(FILE)~ $(FILE).dvi $(FILE).aux $(FILE).toc $(FILE).out \
	$(FILE).log $(FILE).pdf $(FILE).ps $(FILE).bbl $(FILE).blg $(FILE).tex~

cleanup:
	rm -r *~ *.dvi *.aux *.toc *.out *.log *.pdf *.ps *.bbl *.blg
