all: html
	#(cd fig && make) &&

init:
	(cd MarkedGraph; make generes)

html: GuideTutorialAutomata-generated.html GuideTutorialMarkedGraph-generated.html

GuideTutorialMarkedGraph-generated.asciidoc: GuideTutorialMarkedGraph.asciidoc init
	cat $<	\
	    | sed -e '/^ifeval/d'	\
	    | sed -e '/^endif/d'	\
	    > $@

GuideTutorialAutomata-generated.asciidoc: GuideTutorialAutomata.asciidoc
	cat $<	\
	    | sed -e '/^ifeval/d'	\
	    | sed -e '/^endif/d'	\
	    > $@

GuideTutorialAutomata-generated.html: images/tutorial images/icons asciidoc.conf tools/plantuml.jar

%.html: %.asciidoc
	(cd images/tutorial && make)
	asciidoctor -a data-uri -a icons --attribute tabsize=4 $<
	# -a max-width=55em

clean:
	(cd images/tutorial && make clean)
	rm GuideTutorialAutomata.html

