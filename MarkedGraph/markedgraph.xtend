package markedgraph.dsa

import fr.inria.diverse.k3.al.annotationprocessor.Aspect
import markedgraph.*
import static extension markedgraph.dsa.PlaceAspect.*


@Aspect(className=MarkedGraph)
class MarkedGraphAspect {
	def public void initialize() {
		_self.place.forEach [ pl | pl.initialize ]
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
		_self.input.forEach[ runtimeTokenCount = runtimeTokenCount - 1 ]
		_self.output.forEach[ runtimeTokenCount = runtimeTokenCount + 1 ]
	}
}

