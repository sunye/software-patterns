# Don't put the extensions in the following file sets :

# main .tex file
texmain = 10_fausses_idees
# \input'd .tex files
#texother = graph phone
# pictures made with xfig (.fig)
figures = phases
diagrams = generation-gap
# EPS pictures (not xfig's...)
epsfigs = 

%.eps:	%.fig
	fig2dev -Leps $< $@



view: pdf
	acroread $(texmain).pdf

dvi: $(texmain).tex $(texother:%=%.tex) $(figures:%=%.eps) $(epsfigs:%=%.eps) dia
	latex $(texmain).tex

pdf: dvi
	dvipdf $(texmain).dvi 

dia: 
	dia $(diagrams:%=%.dia) -e $(diagrams:%=%.eps)

clean:
	rm -f $(figures:%=%.eps) *.dvi *.log *.aux *.pdf *.out *.blg *.bbl *~ *.bak

