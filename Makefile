all: main.pdf

.PHONY: run

run: main.pdf
	pdftotext main.pdf - | tr -s '\n' | wc -m
	zathura main.pdf

main.pdf: *.tex
	pdflatex -synctex=1 -interaction=nonstopmode main.tex
