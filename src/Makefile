TARGET := main.pdf
SRCS := $(wildcard *.tex)

.PHONY: all clean distclean lint fix-lint
all: $(TARGET)

clean:
	latexmk -c

distclean:
	latexmk -C

%.pdf: %.tex $(SRCS)
	latexmk $<

lint:
	npx textlint **.tex

fix-lint:
	npx textlint **.tex --fix
