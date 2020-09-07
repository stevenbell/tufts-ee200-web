# Jemdoc pages to compile
PAGES=index cli-cheatsheet

# Command to run jemdoc
JEMDOC=python ./jemdoc.py

HPAGES=$(addsuffix .html, $(PAGES))
PHPAGES=$(addprefix html/, $(HPAGES))

# Build all the pages
.PHONY : all
all : $(PHPAGES)
	@cp jemdoc.css html/

# Push the pages to the web server
.PHONY : push
push : $(PHPAGES)
	scp -r html/* sbell@linux.eecs.tufts.edu:/ee/200/public_html

html/%.html : %.jemdoc MENU
	$(JEMDOC) -o $@ $<

.PHONY : clean
clean :
	-rm -f html/*.html
