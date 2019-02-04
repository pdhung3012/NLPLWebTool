package pseudocode;

public class CheckRulesAndUpdateTree_PP {
	function checkRulesAndUpdateTree_PP(PP node,Scope scope)
		if node has the form "to console"
			newNode <--new API(System.out)
			replaceNode(node,newNode)
		else if node has the form "from console"
			newNode <--new API(System.in)
			replaceNode(node,newNode)
}
