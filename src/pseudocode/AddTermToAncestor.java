package pseudocode;

public class AddTermToAncestor {
	Input:
		node - NLP node in phrase levels and word levels 
		scope -scope of project
	function addTermToAncestor(node,scope)
		ancestor <--node.ancestor
		ancestor.listTerms.add(node.listTerms)
}
