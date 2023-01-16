SELECT t."Facility ID" AS "ID", t."State", f."TPS" AS tps15, t."TPS" AS tps21, (t."TPS"- f."TPS") AS diff,
	CASE WHEN (t."TPS"- f."TPS") >0 THEN 'Improved'
	WHEN (t."TPS"- f."TPS") <0 THEN 'Declined'
	END AS "performance"
FROM hvbp_2015 AS f
JOIN hvbp_2021 AS t ON t."Facility ID" = f."Provider Number"
WHERE t."TPS" IS NOT NULL;


