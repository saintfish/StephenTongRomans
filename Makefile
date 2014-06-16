OUT = Romans\ -\ StephenTong.epub
TITLE = title.txt
TEXT = $(wildcard *.md)
PANDOC_ARGS = \
	--toc

$(OUT) : $(TITLE) $(METADATA) $(TEXT)
	pandoc $(PANDOC_ARGS) -t epub -o "$@" -f markdown $(TITLE) $(TEXT)

all : $(OUT)

clean :
	rm $(OUT)
