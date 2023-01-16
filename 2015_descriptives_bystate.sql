SELECT COUNT(f."Provider Number") AS "Count", 
(AVG(f."Clinical Process of Care Score")*.5) +  
(AVG(f."Outcome Score") *.5) AS "Clinical Composite Avg",
AVG(f."Patient Experience of Care Score") AS "Pt Exp Avg",
AVG(f."Efficiency Score") AS "Efficiency Avg",
AVG(f."TPS") AS "TPS Avg",
f."State"
FROM hvbp_2015 as f
WHERE f IS NOT NULL
GROUP BY 
	GROUPING SETS ( (), (f."State"))
ORDER BY f."State";


