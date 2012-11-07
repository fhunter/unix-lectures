TEX_FILES=lectures.tex lectures-title.tex lectures-main.tex history.tex ideology.tex shell.tex filesystems.tex networks.tex security.tex ethics.tex system_install.tex remote_access.tex X11.tex administering.tex

all: lectures.pdf $(TEX_FILES)

lectures.ps: lectures.dvi
	dvips lectures.dvi

lectures.pdf: lectures.ps
	ps2pdf $^ $@

lectures.dvi: $(TEX_FILES)
	latex lectures.tex

clean:
	-rm -rf *.toc *.dvi *.pdf *.aux *.log
