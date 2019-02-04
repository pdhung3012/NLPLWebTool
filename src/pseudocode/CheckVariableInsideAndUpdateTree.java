package pseudocode;

public class CheckVariableInsideAndUpdateTree {
	function checkVariableInsideAndUpdateTree(node,scope)
	text <-- get textual content of root
	setVariable <-- get set of all variables from scope
	listPosition <-- get all positions have variable
	
	for each position pos in listPosition
		className <-- textual content of pos
		
		id <-- get new id
		nodeVar <--new text node
		nodeVar.id <--id
		nodeVar.value <--variable name
		scope.addNode(nodeVar)
		text <-- replace text of nodeVar by nodeVar.id
	
	root <-- parse content of text
}
