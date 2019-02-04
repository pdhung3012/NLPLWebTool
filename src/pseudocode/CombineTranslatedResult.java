package pseudocode;

public class CombineTranslatedResult {
	function combineTranslatedResult(Root node,scope,k)
		listStatements <--get all statement node in root
		listResults <--{}
		for index from 1 to k
			result <--{}
			for each statement stmt in listStatements
				result.add(stmt.get(k))
			listResults.add(result)
			return listResults
}
