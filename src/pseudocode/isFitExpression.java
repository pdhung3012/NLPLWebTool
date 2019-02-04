package pseudocode;

public class isFitExpression {

	function isFitExpression(prevStatement,candStatement,scope)
		listHoles <-- get all holes in candStatement
		for each hole in listHole
			if(type of hole match with type of prevStatement)
				return true
		return false;

}
