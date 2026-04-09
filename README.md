🏥 Patient Profile & Diagnosis Trend

📌 Project Overview
As a Data Analyst for a mid-sized healthcare clinic, this project analyzes synthetic electronic health record (EHR) data to identify clinical and operational factors associated with 30-day hospital readmissions.
While clinicians focus on individual patients, this analysis uncovers broader patterns across the population to support better decision-making, risk identification, and care management strategies.
________________________________________
📊 Dataset Description
The dataset contains de-identified hospital encounter data, including:
•	Patient demographics (age) 
•	Length of stay 
•	Discharge destination 
•	Medication count 
•	Chronic condition indicators (hypertension, diabetes, high cholesterol) 
•	30-day readmission flag 
⚠️ The dataset simulates real-world challenges:
•	Missing (NULL) values 
•	Inconsistent categorical fields 
•	Clinical logic dependencies 
________________________________________
🎯 Project Objectives
•	Identify key drivers of 30-day readmissions 
•	Analyze the impact of medication burden and chronic conditions 
•	Evaluate discharge outcomes and their effect on patient return rates 
•	Develop a rule-based risk scoring model 
•	Perform data quality validation before analysis 
________________________________________
❓ Key Analytical Questions
•	How does medication count impact 30-day readmission rates? 
•	Do patients with multiple chronic conditions have higher readmission risk? 
•	How does discharge destination influence readmission outcomes? 
•	What is the relationship between length of stay and readmission risk? 
•	Can a rule-based scoring system identify high-risk patients? 
•	What data quality issues could affect reporting accuracy? 
________________________________________
🧪 Data Quality Assessment
Before analysis, several validation checks were performed:
•	Identification of missing values in critical fields 
•	Detection of invalid or out-of-range values (e.g., age, LOS) 
•	Standardization of inconsistent categorical data 
•	Validation of chronic condition indicators 
•	Logical consistency checks across encounters 
💡 These steps reflect real-world clinical informatics and data governance practices.
________________________________________
⚠️ Readmission Risk Scoring
A rule-based risk model was developed using:
•	Age 
•	Length of stay 
•	Medication count 
•	Chronic condition indicators 
•	Discharge destination 
This approach simulates early-stage clinical decision support systems used in population health management.
________________________________________
🧠 Skills Demonstrated
•	SQL Server (CTEs, joins, aggregations, CASE statements) 
•	Healthcare data analysis & clinical interpretation 
•	Data quality assessment & validation 
•	Risk stratification modeling 
•	Translating clinical workflows into analytical logic 
•	Preparing datasets for Power BI dashboards 
________________________________________
🗂️ Project Structure
hospital-readmission-analysis/
│
├── sql/
│   ├── data_quality_checks.sql
│   ├── readmission_analysis.sql
│   └── risk_scoring.sql
│
├── powerbi/
│   └── readmission_dashboard.pbix
│
├── documentation/
│   └── data_dictionary.md
│
└── README.md
________________________________________
📈 Tools & Technologies
•	SQL Server 
•	Power BI 
________________________________________
📊 Key Insights
•	Higher medication counts are associated with increased readmission risk 
•	Patients with multiple chronic conditions are more likely to be readmitted 
•	Discharge destination plays a critical role in patient outcomes 
•	Longer hospital stays may indicate higher clinical complexity and risk 
________________________________________
👩🏽‍💻 Author
Selamawit Engeda
Healthcare Informatics | Clinical Data & Systems Analysis
________________________________________
