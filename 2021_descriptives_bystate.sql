SELECT COUNT(t."Facility ID") AS "Count", 
AVG(t."Clinical Outcomes Score") AS "Clinical Outcomes Avg",
AVG(t."Person and Community Engagement Score") AS "Enagement Avg",
AVG(t."Safety Score") AS "Safety Avg",
AVG(t."Efficiency and Cost Reduction Score") AS "Efficiency Avg",
AVG(t."TPS") AS "TPS Avg",
t."State"
FROM hvbp_2021 as t
WHERE t IS NOT NULL
GROUP BY 
	GROUPING SETS ( (), (t."State"))
ORDER BY t."State";


