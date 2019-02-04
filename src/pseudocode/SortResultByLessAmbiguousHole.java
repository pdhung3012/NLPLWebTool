package pseudocode;

public class SortResultByLessAmbiguousHole {
	function sortResultByLessAmbiguousHole(listResults)
		for each statement stmt in listResults
			countAmbi <-- 0
			listHoles <-- stmt.listHoles
			for each hole in listHoles
				if hole doesn't be fitted by an expression
					countAmbi++
				else
					fittedStatement <-- get statement fitted in hole
					numAmbi <-- get all holes in fittedStatement
					countAmbi <-- countAmbi+numAmbi
			stmt.scoreAmbi <-- countAmbi
		listResults <-- sort listResults by scoreAmbi descending. 
}
