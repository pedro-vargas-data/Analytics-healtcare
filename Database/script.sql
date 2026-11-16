-- ============================================================================
-- Healthcare Operations & Financial Risk Analytics
-- Author: Pedro Vargas Salgado
-- Description: Relational schema creation and analytical queries for financial
--              risk exposure by medical department and region.
-- ============================================================================

CREATE TABLE IF NOT EXISTS patient_visits (
    patient_id INT PRIMARY KEY,
    visit_date DATETIME,
    age_group VARCHAR(100),
    gender VARCHAR(100),
    region VARCHAR(100),
    department VARCHAR(100),
    treatment_type VARCHAR(100),
    visit_type VARCHAR(100),
    length_of_stay_days DECIMAL(10, 2),
    treatment_cost DECIMAL(10, 2),
    recovery_score DECIMAL(10, 2),
    readmission_risk DECIMAL(10, 2),
    type_stay_attention VARCHAR(100),
    financial_risk_impact DECIMAL(10, 2)
);

-- 1. General Data Validation
SELECT *
FROM patient_visits
LIMIT 10;

-- 2. Top 3 Department-Region Pairs by Financial Risk Exposure
SELECT 
    department,
    region,
    COUNT(patient_id) AS total_patients,
    SUM(financial_risk_impact) AS total_financial_risk_impact, 
    SUM(treatment_cost) AS total_treatment_cost, 
    ROUND(AVG(readmission_risk), 4) AS average_readmission_risk,
    ROUND(AVG(length_of_stay_days), 2) AS average_length_of_stay_days
FROM patient_visits
GROUP BY department, region
ORDER BY total_financial_risk_impact DESC
LIMIT 3;

-- 3. Financial Risk & Cost Summary by Medical Department
SELECT 
    department,
    COUNT(patient_id) AS total_patients,
    ROUND(AVG(treatment_cost), 2) AS avg_treatment_cost,
    ROUND(AVG(readmission_risk), 4) AS avg_readmission_risk,
    SUM(financial_risk_impact) AS total_financial_risk_impact
FROM patient_visits
GROUP BY department
ORDER BY total_financial_risk_impact DESC;
