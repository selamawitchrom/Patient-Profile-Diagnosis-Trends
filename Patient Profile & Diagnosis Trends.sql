SELECT * FROM claims;
SELECT * FROM MEMBERS;

Find the top 10 CPT codes by total paid amount.

Find the top 10 ICD codes by total paid amount.

Identify CPT codes with a high paid amount per claim by calculating:

average_paid_per_claim = total_paid_amount ÷ claim_count


SELECT TOP 10 (cpt_code),(icd_code), MAX(paid_amount) AS total 
FROM claims
GROUP BY cpt_code, icd_code, paid_amount
order by total

