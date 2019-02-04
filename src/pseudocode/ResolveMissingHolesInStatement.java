package pseudocode;

public class ResolveMissingHolesInStatement {

	//	handle for each API, choosing the best expression from the scope
	function resolveMissingHolesInStatement(statement,node,scope)
		listStatements <-- clause.listStatement
		listAdjacentExprs <--getAdjacentExpression(clause,listStatement)
		listHoles <-- statement.listHoles.
		
//		declare a mao that stored status of each hole if it is fitted by an expression or not.
		mapHoleOfStatement <-- Map<Hole,Statement>
		for each hole in listHoles		
			// get list of declarations that have type of holes
			// finding direct reference and fit full hole
			for each expr in listAdjacentExprs()
				if isTypeMatch(expr,hole)
					mapHoleOfStatement.put(hole,expr);
					listAdjacentExprs.remove(expr)			
			// finding indirect reference and fit full hole
			listDeclarations <-- getListOfDeclarationOfHole(hole)
			for each expr in listAdjacentExprs
				listFitDecl <-- {} 
				for each decl in listDeclarations				
					if(isFitExpression(expr,hole))
						listFitDecl.add(expr)
				if(listFitDecl is not empty)
					bestDecl <--chooseBestDeclByScope(listFitDecl,scope)
					bestDecl <-- fit expr in bestDecl
					mapHoleOfStatement.put(hole,bestDecl);
					listAdjacentExprs.remove(expr)
					break;
		
		for each hole doesn't appear in mapHoldOfStatement
			listDeclarations <-- getListOfDeclarationOfHole(hole)
			bestDecl <--chooseBestDeclByScope(listDeclarations,scope)	
			mapHoleOfStatement.put(hole,bestDecl);
		
		statement <-- fit mapHoleOfStatement to statement
					
					
		
		
}	
