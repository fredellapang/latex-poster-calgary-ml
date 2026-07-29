.PHONY: main clean FORCE

main: poster.pdf

# poster.pdf: FORCE
# 	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf poster.tex
poster.pdf: FORCE
    latexmk -pdflatex='lualatex -shell-escape -interaction nonstopmode' -pdf poster.tex

clean:
	latexmk -pdf -C

