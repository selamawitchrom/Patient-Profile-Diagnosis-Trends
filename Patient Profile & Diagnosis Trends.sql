select * from patient_visits;

 -----How many patient 
	select count(visit_id)
	from patient_visits
    
--------identify unique patient_id
    select count(distinct patient_id) as Total_patient
    from patient_visits;

------ calaculate the average patient
	select avg(total_patient_id) as Total
    from (select patient_id, count(visit_id) as count_visit 
    from patient_visits
    group by patient_id;


------- Patient Population Overview
select 
 case 
    when Patient_age < 18 then '0-17'
    when patient_age BETWEEN 18 AND 39 THEN '18-39'
    WHEN patient_age BETWEEN 40 AND 59 THEN '40-59'
    ELSE '60+'
 END AS age_group,
 count(*) as visit_count
from patient_visits
group by 
  case
     when patient_age < 18 Then '0-17'
     when patient_age BETWEEN 18 AND 39 THEN '18-39'
     WHEN patient_age BETWEEN 40 and 59 then '40-59'
     else '60+'
     end 
     order by age_group;
     
 --------Diagnosis Analysis cpt_code
select  cpt_code,patient_age, 
count(*) as number_of_people
from patient_visits
where patient_age >= 60  
group by cpt_code, patient_age
limit 10;

----  Diagnosis Analysis by Icd_code
select icd_code, patient_sex, count(*) as icd_code
from patient_visits 
group by icd_code, patient_sex
limit 10;

--------Procedure (CPT) Insights
select cpt_code, count(*) as procedures
from patient_visits
group by cpt_code
order by procedures desc 
limit 5;

----- Rank CPT codes by frequency to see which procedures are performed most often.
select cpt_code, count(*) as frequency 
from patient_visits
   group by cpt_code 
   having count(*) >2 
   order by frequency desc


