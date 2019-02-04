package pseudocode;

public class CheckRulesAndUpdateTree_VP {
	function checkRulesAndUpdateTree_NP(NP node,Scope scope)
		if node has the form VP --> VB NN * and VB.value=="create" and NN.type=="className"
			newNode <--get constructor of type NN and has argument that accept variables in (*) part
			replaceNode(node,newNode)
		else if node has the form VP --> VB JJ NN * and VB.value=="create" and JJ.value=="new" and NN.type=="className"
			newNode <--get constructor of type NN and has argument that accept variables in (*) part
			replaceNode(node,newNode)
}
