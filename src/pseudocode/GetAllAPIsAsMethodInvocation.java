package pseudocode;

public class GetAllAPIsAsMethodInvocation {

	function getAllAPIsAsMethodInvocation(clause,scope,k)
		listSignatures <-- getListOfIdentifiers(node,scope,k);
		listAPIs <--getListOfAPIs(node,listSignatures,scope,k);
		return listAPIs;
}
