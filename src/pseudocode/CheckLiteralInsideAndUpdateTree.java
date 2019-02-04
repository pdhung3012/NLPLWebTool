package pseudocode;

public class CheckLiteralInsideAndUpdateTree {
	function checkLiteralInsideAndUpdateTree(root,scope)
		text <-- get textual content of root
		
		listString <-- get all position with the regex "*"
		listNumeric <-- get all numeric position
		
		for each string str in listString
			id <--generate unique ID
			value <-- str
			nodeString <--new text node
			node.id <--id
			node.value <--value
			scope.addNode(nodeString)
			text <-- replace str by id 
		
		for each number num in listNumeric
			id <--generate unique ID
			value <-- num
			nodeNum <-- new text node
			node.id <--id
			node.value <--value
			scope.addNode(nodeNum)
			text <-- replace num by id 
		
		root <-- parse content of text
}		
