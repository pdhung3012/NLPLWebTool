package pseudocode;

public class TranslateClause {

function translateClause(node, scope, k)
Input:
	node: at clause level
	scope: scope of project
	k: size of results
Output:
	listResults: all possible code options.

listResults ← {};
if node is a sentence then
	if node is a single clause then
		listResults ← getAllStatementsAsMethodInvocation(node,scope,k);
	else
		// a sentence contains multiple clauses which separated by conjunctions ”and” or ”or”
		listSubClauses ← splitToSingleClauses(node);
		len ← length(listSubClauses)
		listCandidateStatements= new Statement[len][k];

		for i from 1 to k
        	//resultI stores a list of statements collected as translated option i of each clause
        	resultI ← {}
		
        	// loop over clauses
        	for j from 1 to len do
	        	clause <--listSubClauses.get(j)
	            if(listCandidateStatements[i]==null)
	            	listCandidateStatements[i]=getAllAPIsAsMethodInvocation(clause,scope,k);
	        	prevStatement <-- getPrevStatement(resultI)
	        	candStatement <-- listCandidateStatements[i][j]
	        	
	        	// append to the result list
	        	if(isFitExpression(candStatement,prevStatement))
	        		// get candidate statement after combination
	        		candStatement <-- combineExpression(candStatement,prevStatement);
	        		candStatement <-- resolveMissingHolesInStatement(candStatement,clause,scope);  	        		 
	        		// remove prev statement from the result
	        		resultI.remove(prevStatement);
	        		resultI.add(candStatement);
	    		else
	    			candStatement <-- resolveMissingHolesInStatement(candStatement,clause,scope);
    			resultI.add(candStatement);
    		listResults.add(resultI);
		sortResultByLessAmbiguousHole(listResults);
else
	listSubSentences ← splitToSentences(node) ;
    for i ← 1 to k do
	resultI ← {}
    for each sentence s ∈ listSubSentences do
    	listTransI ← translateClause(s,scope,k);
    	candStatemenet <-- listTransI.get(i);
		resultI ← resultI.add(candStatement);    	
    	listResults.add(resultI);
    
return listResults;	
}
