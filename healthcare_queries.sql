
-- Healthcare Patient Analysis SQL Queries
-- Analyst: Hamna Maqbool

-- Query 1: Department Analysis
SELECT Department, 
COUNT(*) as Total_Patients,
ROUND(AVG(Admission_Deposit),2) as Avg_Deposit
FROM patients
GROUP BY Department
ORDER BY Total_Patients DESC;

-- Query 2: Severity Breakdown
SELECT "Severity of Illness",
COUNT(*) as Count,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM patients),2) 
as Percentage
FROM patients
GROUP BY "Severity of Illness";

-- Query 3: Admission Type Analysis
SELECT "Type of Admission", 
COUNT(*) as Total,
ROUND(AVG("Visitors with Patient"),2) as Avg_Visitors
FROM patients
GROUP BY "Type of Admission"
ORDER BY Total DESC;

-- Query 4: Department vs Severity
SELECT Department,
"Severity of Illness",
COUNT(*) as Total,
ROUND(AVG(Admission_Deposit),2) as Avg_Deposit
FROM patients
GROUP BY Department, "Severity of Illness"
ORDER BY Total DESC
LIMIT 15;
