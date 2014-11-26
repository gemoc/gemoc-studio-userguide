all: html
	#(cd fig && make) &&

html: GuideTutorialAutomata.html

GuideTutorialAutomata.html: images/tutorial images/icons asciidoc.conf tools/plantuml.jar

%.html: %.asciidoc
	(cd images/tutorial && make)
	asciidoc -a data-uri -a icons --attribute tabsize=4 $<
	# -a max-width=55em

clean:
	(cd images/tutorial && make clean)
	rm GuideTutorialAutomata.html

