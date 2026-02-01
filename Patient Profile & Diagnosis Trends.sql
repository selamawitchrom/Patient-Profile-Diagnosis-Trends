select * from patient_visits;
select * from  diagnosis;

------ using the left join to put the idc_codes in one table
select icd_code
from patient_visits as p
join diagnosis as d 
on p. patient_id = d.patient_id


----- To identify which gender group is more diagnosis in cpt_code

select top 10 cpt_code,patient_age,patient_sex, 
count(*) as number_of_people
from patient_visits
where patient_age >= 60  
group by cpt_code, patient_age, patient_sex

---- What does the clinic’s patient population look like by Age?

 select patient_age, count(*) as patient 
from  patient_visits
group by patient_age
order by patient_age asc 

---- What are the top diagnoses overall?

select top 5 icd_code, count(*) as diagnosis_code 
from diagnosis
group by icd_code 
order by diagnosis_code desc


---  Which CPT codes (procedures) are performed most often?*
select top 5 cpt_code, count(*) as procedures
from patient_visits
group by cpt_code
order by procedures desc 


---- fliter patient age
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


