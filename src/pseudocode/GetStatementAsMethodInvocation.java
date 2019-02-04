package pseudocode;

public class GetStatementAsMethodInvocation {
	input:
		- node
		- scope
		- k
	function getAllStatementsAsMethodInvocation(node,scope,k){
		listSignatures <-- getListOfIdentifiers(node,scope,k);
		listAPIs <--getListOfAPIs(node,listSignatures,scope,k);
		//empty statements
		listStatements <--{}
		for each method api in listAPIs
			statement <--getStatementFromAPI(api);
			statement <--resolveMissingHolesInStatement(statement,node,scope);
			listStatements.add(statement);
		return listStatements;
	}

}
