package pseudocode;

public class CheckRulesAndUpdateTree_NP {
	function checkRulesAndUpdateTree_NP(NP node,Scope scope)
		if node has the form NP --> JJ NN * and JJ.value=="new" and NN.type=="className"
			newNode <--get constructor of type NN and has argument that accept variables in (*) part
			replaceNode(node,newNode)
	
}
