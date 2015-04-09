ALL = markedgraph.xtend markedgraph.ecl
MARKEDGRAPH_PROJECT = ${HOME}/workspace-markedgraph/
MARKEDGRAPH_PREFIX = ${MARKEDGRAPH_PROJECT}org.gemoc.example.markedgraph

all: generes
generes: ${ALL}

markedgraph.xtend: ${MARKEDGRAPH_PREFIX}.k3dsa/src/markedgraph/markedgraph.xtend
	cp $< $@

markedgraph.ecl: ${MARKEDGRAPH_PREFIX}.dse/ecl/markedgraph.ecl
	cp $< $@
