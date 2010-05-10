all: lectures.pdf

lectures.pdf: lectures.dvi
	dvipdf lectures.dvi

lectures.dvi: lectures.tex
	latex lectures.tex
