TEX_FILES:= $(wildcard *.tex)

all: lectures.pdf lectures_booklet.pdf $(TEX_FILES)

lectures.ps: lectures.dvi
	dvips lectures.dvi

lectures.pdf: lectures.ps
	ps2pdf $^ $@

lectures_booklet.pdf: lectures.pdf
	pdf2ps $^ -|psbook| psnup -l4 -2 | ps2pdf - $@

lectures.dvi: $(TEX_FILES) lectures.bib
	latex lectures.tex
	#для обновления оглавления
	latex lectures.tex

clean:
	-rm -rf *.toc *.dvi *.pdf *.aux *.log
