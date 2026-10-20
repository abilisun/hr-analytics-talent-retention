SELECT COUNT(*) FROM hr_employees;

SELECT column_name 
FROM information_schema.columns 
WHERE table_name = 'hr_employees';

SELECT 
    department,
    COUNT(empid) AS total_headcount,
    SUM(CASE WHEN LOWER(employmentstatus) LIKE '%terminated%' THEN 1 ELSE 0 END) AS total_terminated,
    ROUND(
        CAST(SUM(CASE WHEN LOWER(employmentstatus) LIKE '%terminated%' THEN 1 ELSE 0 END) AS NUMERIC) / COUNT(empid) * 100, 
        2
    ) AS turnover_rate_pct
FROM hr_employees
GROUP BY department
ORDER BY turnover_rate_pct DESC;


SELECT 
    department,
    COUNT(empid) AS active_headcount,
    SUM(salary) AS total_monthly_labor_cost,
    ROUND(CAST(AVG(salary) AS NUMERIC), 2) AS avg_salary_per_employee
FROM hr_employees
WHERE LOWER(TRIM(employmentstatus)) = 'active'
GROUP BY department
ORDER BY total_monthly_labor_cost DESC;


SELECT 
    recruitmentsource,
    COUNT(empid) AS total_hires,
    ROUND(CAST(AVG(salary) AS NUMERIC), 2) AS avg_hired_salary
FROM hr_employees
GROUP BY recruitmentsource
ORDER BY total_hires DESC;


SELECT 
    department,
    ROUND(CAST(AVG(absences) AS NUMERIC), 1) AS avg_absences,
    ROUND(CAST(AVG(empsatisfaction) AS NUMERIC), 2) AS avg_satisfaction_score,
    ROUND(CAST(AVG(engagementsurvey) AS NUMERIC), 2) AS avg_engagement_score
FROM hr_employees
GROUP BY department
ORDER BY avg_absences DESC;