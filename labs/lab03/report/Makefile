FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))
LATEX_FORMAT = --pdf-engine=xelatex
FILTER = 
%.docx: %.md
	@echo "Generating $@ from $<..."
	-pandoc "$<" $(FILTER) -o "$@"
%.pdf: %.md
	@echo "Generating $@ from $<..."
	-pandoc "$<" $(XELATEX_FORMAT) $(FILTER) -o "$@"
all: $(FILES)
	@echo "Generated files: $(FILES)"
clean:
	@echo "Cleaning up..."
	-rm -f $(FILES) *~

