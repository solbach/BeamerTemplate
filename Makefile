all:
	pdflatex templ.tex
	pdflatex templ.tex
	bibtex templ.aux
	pdflatex templ.tex

clean:
	mkdir tmp
	cp *.tex tmp/
	cp *.bib tmp/
	cp *.pdf tmp/
	rm templ*
	mv tmp/* .
	rm -r tmp

fast:
	pdflatex templ.tex
