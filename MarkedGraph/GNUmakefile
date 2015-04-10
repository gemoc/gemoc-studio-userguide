ALL = markedgraph.xtend markedgraph.ecl markedgraph.ecore
MARKEDGRAPH_PROJECT = ${HOME}/workspace-markedgraph/
MARKEDGRAPH_PROJECT = ${HOME}/workspace-mg/
MARKEDGRAPH_PREFIX = ${MARKEDGRAPH_PROJECT}org.gemoc.example.markedgraph

all: generes
generes: ${ALL}

markedgraph.ecore: ${MARKEDGRAPH_PREFIX}.as/model/markedgraph.ecore
	cp $< $@

markedgraph.xtend: ${MARKEDGRAPH_PREFIX}.k3dsa/src/markedgraph/dsa/markedgraph.xtend
	cp $< $@

markedgraph.ecl: ${MARKEDGRAPH_PREFIX}.dse/ecl/markedgraph.ecl
	cp $< $@
