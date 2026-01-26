
/* You are a Data Analyst for a mid-sized healthcare clinic. You’ve been given a synthetic dataset containing two tables:
basic patient demographics (age, sex, race, insurance, ZIP code) and a diagnosis history containing ICD and CPT codes for each visit. 
Your job is to help the clinic understand the makeup of its patient population and the most common conditions they treat.
Doctors see patients one by one, but you get to see the big picture. Use this dataset to build simple insights about who your 
patients are and what health issues are most common.*/


select * from patient_visits;
select * from  diagnosis;

------ using the left join to put the idc_codes in one table
select icd_code
from patient_visits as p
join diagnosis as d 
on p. patient_id = d.patient_id


----- whose more diagnoses by  sex and age group--- almost only over 6o female are visit the hospotal

select top 10 cpt_code,patient_age,patient_sex, 
count(*) as number_of_people
from patient_visits
where patient_age >= 60  
group by cpt_code, patient_age, patient_sex

----

/*What does the clinic’s patient population look like by Age?*/

 select patient_age, count(*) as patient 
from  patient_visits
group by patient_age
order by patient_age asc 

---- what are the top diagnoses overall*/

select top 5 icd_code, count(*) as diagnosis_code 
from diagnosis
group by icd_code 
order by diagnosis_code desc


---  Which CPT codes (procedures) are performed most often?*/
select top 5 cpt_code, count(*) as procedures
from patient_visits
group by cpt_code
order by procedures desc 
