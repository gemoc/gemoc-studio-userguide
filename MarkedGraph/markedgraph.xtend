package markedgraph

import fr.inria.diverse.k3.al.annotationprocessor.Aspect


@Aspect(className=MarkedGraph)
class MarkedGrahAspect {
	def public void initialize() {
		_self.place.map [ pl | pl.runtimeTokenCount = pl.tokenCount ]
	}
}

@Aspect(className=Place)
class PlaceAspect {
	public int runtimeTokenCount
	
	def public void initialize() {
		_self.runtimeTokenCount = _self.tokenCount
	}
}

@Aspect(className=Transition)
class TransitionAspect {
	def public void fire() {
		_self.input.map[ pl | pl.runtimeTokenCount-- ]
		_self.output.map[ pl | pl.runtimeTokenCount++ ]
	}
}

