SELECT
(((f."Clinical Process of Care Score")*.5) +  
(f."Outcome Score") *.5) AS "Clinical Composite",
*
FROM hvbp_2015 as f
WHERE f IS NOT NULL
ORDER BY f."State";


