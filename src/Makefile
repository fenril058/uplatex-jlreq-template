TARGET := main.pdf
SRCS := $(filter-out $(TARGET:.pdf=.tex), $(wildcard *.tex))
PDFS := $(SRCS:.tex=.pdf)
dir=build
latex=uplatex -halt-on-error -output-directory=$(dir)
dvipdf=dvipdfmx

.PHONY: all clean distclean lint fix-lint each
all: $(TARGET)

clean:
	latexmk -c
	$(RM) -r $(dir)

distclean:
	latexmk -C
	$(RM) *.pdf

%.pdf: %.tex $(SRCS)
	texfot latexmk $<

each: $(PDFS)
$(PDFS): %.pdf: %.tex
	mkdir -p $(dir)
	$(latex) $<
	$(dvipdf) $(dir)/$(<:.tex=.dvi)

lint:
	npx textlint **.tex

fix-lint:
	npx textlint **.tex --fix
