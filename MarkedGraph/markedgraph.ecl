import 'platform:/resource/org.gemoc.example.markedgraph.as/model/markedgraph.ecore'
ECLimport "platform:/plugin/fr.inria.aoste.timesquare.ccslkernel.model/ccsllibrary/kernel.ccslLib"
ECLimport "platform:/plugin/fr.inria.aoste.timesquare.ccslkernel.model/ccsllibrary/CCSL.ccslLib"

package markedgraph

	context MarkedGraph
		def: initIt: Event = self.initialize()
	
	context Transition
		def: fireIt: Event = self.fire()
	
	context Place	
		inv tokenCountIsNull:
			(self.tokenCount = 0) implies
				(Relation Precedes(self.input.fireIt, self.output.fireIt))
		inv tokenCountIsNotNullDelayRequired:
			(self.tokenCount > 0) implies
				let outputDelayed: Event =
					Expression DelayFor(self.output.fireIt, self.output.fireIt, self.tokenCount) in
						Relation Precedes(self.input.fireIt, outputDelayed)

	context MarkedGraph
        inv initFirst:
                let firstInit : Event = Expression OneTickAndNoMore(self.initIt) in
                let allFire : Event = Expression Union(self.transition.fireIt) in
                let firstOfAllFire : Event = Expression OneTickAndNoMore(allFire) in
                Relation Precedes(firstInit, firstOfAllFire)

        inv onlyOneInit:
                let firstInit2 : Event = Expression OneTickAndNoMore(self.initIt) in
                Relation Coincides(self.initIt, firstInit2)

endpackage