package pseudocode;

public class AddTermAndStatementToAncestor {
	function addTermAndStatementToAncestor(node,scope)
		listChildren <--node.children
		for each child in listChildren
			listChildrenTerms <-- get all terms from child
			listChildrenStatements <-- get all statement from child
			node.listTerms.add(listChildrenTerms)
			node.listStatements.add(listChildrenStatements)
}
