TEX=uplatex
BIBTEX=upbibtex
TEX2PDF=uptex2pdf
DVI2PDF=dvipdfmx
FILENAME=main

TEX2PDFFLAG = -e -l 

.SUFFIXES: .tex .dvi .aux .log .toc .lof .lot .pdf .ps .bbl .bib .blg

all: $(FILENAME).dvi

bbl: $(FILENAME).bbl

release: $(FILENAME).pdf

open:
	open $(FILENAME).dvi

$(FILENAME).pdf: $(FILENAME).dvi
	$(DVI2PDF) $<
	mv $(FILENAME).pdf ../release

$(FILENAME).dvi: $(FILENAME).tex 
	 sh ../utility/compile.sh $(FILENAME)
	$(DVI2PDF) $(FILENAME).dvi
	mv $(FILENAME).pdf ../draft/

$(FILENAME).bbl: $(FILENAME).bib $(FILENAME).tex
	$(TEX) $(FILENAME).tex   # 1. Output reference information to aux file.
	$(BIBTEX) $(FILENAME)    # 2. make bbl file.
	$(TEX) $(FILENAME).tex   # 3. Import bbl file information.
	$(TEX) $(FILENAME).tex   # 4. Solve cress-references.

clean:
	rm -r $(FILENAME)~ $(FILENAME).dvi $(FILENAME).aux $(FILENAME).toc $(FILENAME).out \
	$(FILENAME).log $(FILENAME).pdf $(FILENAME).ps $(FILENAME).bbl $(FILENAME).blg

cleanup:
	rm -r *~ *.dvi *.aux *.toc *.out *.log *.pdf *.ps *.bbl *.blg
