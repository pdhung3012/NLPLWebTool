package pseudocode;

public class CombineExpression {

	function combineExpression(prevStatement,candStatement,scope)
		listHoles <-- get all holes in candStatement
		for each hole in listHole
			if(type of hole match with type of prevStatement)
				candStatement <-- fit prevStatement in hole of candStatement
				break
		
}
