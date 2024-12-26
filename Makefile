DIR := src

.PHONY: all clean distclean lint fix-lint
all:
	make -C $(DIR)

clean:
	make clean -C $(DIR)

distclean:
	make distclean -C $(DIR)

lint:
	make lint -C $(DIR)

fix-lint:
	make fix-lint -C $(DIR)
