all: html
	#(cd fig && make) &&

html: GuideTutorialAutomata.html

GuideTutorialAutomata.html: t-images images/icons asciidoc.conf t-tools/plantuml.jar

%.html: %.asciidoc
	(cd t-images && make)
	asciidoc -a data-uri -a icons --attribute tabsize=4 $<
	# -a max-width=55em

clean:
	(cd t-images && make clean)
	rm GuideTutorialAutomata.html

