TEX_FILES=lectures.tex lectures-title.tex lectures-main.tex

all: lectures.pdf $(TEX_FILES)

lectures.pdf: lectures.dvi
	dvipdf lectures.dvi

lectures.dvi: $(TEX_FILES)
	latex lectures.tex

clean:
	-rm -rf *.toc *.dvi *.pdf *.aux *.log
