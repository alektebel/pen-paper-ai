FILE = rl_for_llms_exercises

.PHONY: all clean

all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
	pdflatex -interaction=nonstopmode $(FILE).tex
	pdflatex -interaction=nonstopmode $(FILE).tex

clean:
	rm -f $(FILE).pdf $(FILE).aux $(FILE).log $(FILE).toc $(FILE).out
