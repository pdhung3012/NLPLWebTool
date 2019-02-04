package pseudocode;

public class GetListOfIdentifiers {

	function getListOfIdentifiers(node,scope)
		listTerms <--node.listTerm;
		listStatements <-- node.listStatements;
		listAllIdentifiers <-- scope.getAllIdentifiers()
		for each identifier iden in listAllIdentifiers
			treeIden <-- iden.getParsedTree()
			treeNode <-- node.getParsedTree()
			firstVerbInIden <-- getFirstVerb(treeIden)
			firstVerbInNode <-- getFirstVerb(treeNode)
			listMappedTerms <-- getSimilarTerms(treeIden,treeNode)
			listNotMatchInNode <-- getNotMatchInNode(treeIden,treeNode)
			listNotMatchInIden <-- getNotMatchInIden(treeIden,treeNode)
			sizeTermsInIden <-- treeIden.size()
			sizeTermsInNode <-- treeNode.size()
			
			scoreMatchVerb=0;
			if(firstVerbInIden is firstVerbInNode)
				scoreMatchVerb=1;
			else if (isSynonym(firstVerbInIden,firstVerbInNode))
				scoreMatchVerb=0.6;
			else
				scoreMatchVerb=0;
				
			scoreMatchTermsInNode=listMappedTerms.size()/sizeTermsInIden;
			
			// score in node is evaluated by matching at the first word and list of other words 
			scoreMatchInNode=0.5*scoreMatchVerb+0.5*scoreMatchTermsInNode;
			
			scoreMatchInIden=0;
			scoreMatchSize=0;
			
			scoreMatchInIden=listMappedTerms.size()/sizeTermsInIden;
			scoreMatchSize=listMappedTerms.size()
			
			totalScore=0.75*scoreMatchInNode+0.2*scoreMatchInIden+0.05*scoreMatchSize;
			
			identifier.scoreMatch <--totalScore;
			identifier.listNotMatchInNode <-- listNotMatchInNode;
		
		listAllIdentifiers <-- sortByScoreDesc(listAllIdentifiers)
		listResultIdentifiers <--getTop(listAllIdentifiers,50)
		return Identifiers;	
}
