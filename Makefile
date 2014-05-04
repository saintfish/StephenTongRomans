OUT = Romans\ -\ StephenTong.epub
TITLE = title.txt
TEXT = \
	001.md \
	002.md \
	003.md \
	004.md \
	005.md \
	006.md \
	007.md \
	008.md \
	009.md \
	010.md \
	011.md
PANDOC_ARGS = \
	--toc

$(OUT) : $(TITLE) $(METADATA) $(TEXT)
	pandoc $(PANDOC_ARGS) -t epub3 -o "$@" -f markdown $(TITLE) $(TEXT)

all : $(OUT)

clean :
	rm $(OUT)
