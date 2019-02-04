package pseudocode;

public class GetListOfAPIs {
	function getListOfMethodAPIs(node,listIdentifiers,scope)
		listAPIResults={}
		for each identifier iden in listIdentifiers
			listMethodAPIForEachIdens <-- getAllAPIsOfIdentifier(iden,scope)
			listFilterAPIs <-- {}
			for each api api in listMethodAPIForEachIdens
				listTermsInAPIs <-- get all terms in apis
				listNotMatchInNode <-- iden.listNotMatchInNode
				if(isOverlap(listTermsInAPIs,listNotMatchInNode))
					listFilterAPIs.add(api)
			if(listFilterAPIs is empty)
				listFilterAPIs=listMethodAPIForEachIdens.
			listAPIResults.addAll(listFilterAPIs)
		return listA{IResults;
}
