package pseudocode;

public class CheckClassNameAndUpdateTree {
	function checkClassNameAndUpdateTree(node,scope)
		text <-- get textual content of root
		setClassName <-- get set of all class name from scope
		listPosition <-- get all class name appeared in text
		
		for each position pos in listPosition
			className <-- textual content of pos
			fullClassName <-- getMostAppearedFQNInProject(className,scope)
			id <-- get new id
			nodeClass <--new text node
			nodeClass.id <--id
			nodeClass.value <--className
			nodeClass.fullClassName <--fullClassName
			scope.addNode(nodeClass)
			text <-- replace className by nodeClass.value
		
		root <-- parse content of text
		
}
