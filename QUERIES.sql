USE FEARS_DB;

-- Most deaths by a drug. 
SELECT outc19q1.outc_cod AS OUTCOME, count(*) AS FREQ , drug19q1.drugname
FROM drug19q1
JOIN outc19q1 
ON outc19q1.primaryid=drug19q1.primaryid
group by outc19q1.outc_cod, drug19q1.drugname
-- WHERE outc19q1.outc_cod = 'DE'
order by outc19q1.outc_cod desc;




-- Keyword search on active ingredient and drugname
SELECT * 
FROM drug19q1 D1 
JOIN demo19q1 D ON D1.primaryid= D.primaryid;

-- OUTER JOIN
SELECT * 
FROM drug19q1 D1 
RIGHT JOIN demo19q1 D ON D1.primaryid= D.primaryid;




-- DRUG AND THEIR SYMPTOMS
SELECT drug19q1.primaryid,drug19q1.drugname AS DRUG, drug19q1.prod_ai AS ACTIVE_INGREDIENT,reac19q1.pt AS MEDICAL_SYMPTOMS
FROM reac19q1
INNER JOIN drug19q1 ON (drug19q1.primaryid=reac19q1.primaryid)
WHERE drug19q1.prod_ai = 'EVEROLIMUS' 
AND (reac19q1.pt = 'ECZEMA' OR REAC19Q1.pt = 'Joint Swelling') 
;



-- DRUG AND SIDE EFFECTS

SELECT drug19q1.primaryid,drug19q1.drugname AS DRUG, drug19q1.prod_ai AS ACTIVE_INGREDIENT,indi19q1.indi_pt AS MEDICAL_EFFECTS
FROM indi19q1
INNER JOIN drug19q1 ON (drug19q1.primaryid=indi19q1.primaryid)

WHERE drug19q1.prod_ai = 'BOSUTINIB' 
AND (indi19q1.indi_pt = 'Multiple sclerosis' OR indi19q1.indi_pt = 'Hypertension') 
LIMIT 1
;


-- FILTERING VIA DATES 

SELECT ther19q1.Start_dt , ther19q1.end_dt ,drug19q1.drugname
FROM drug19q1
JOIN ther19q1 ON ther19q1.primaryid=drug19q1.primaryid
WHERE ther19q1.Start_dt LIKE '2015-04%' AND drug19q1.drugname = 'TAXOTERE'