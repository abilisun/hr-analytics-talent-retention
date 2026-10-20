# HR Analytics: Optimizing Workforce Cost & Talent Retention

An end-to-end performance analysis of 311 employee records, tracking turnover risks, monthly labor costs, recruitment channel ROI, and employee engagement metrics. Built using PostgreSQL and Tableau.

---

## Executive Summary

Over the analyzed dataset, the organization manages **311 total headcount** with an active workforce of **207 employees**, generating a total monthly labor cost of **$14.59M**. The overall company turnover rate stands at **33.44%**, heavily driven by operational departments like Production and Software Engineering.

---

## Key Performance Indicators (KPIs)

* **Total Headcount**: 311 Employees
* **Active Employees**: 207 Employees
* **Overall Turnover Rate**: 33.44%
* **Total Monthly Labor Cost**: $14,633,665

---

## 📈 Dashboard Preview & Deep-Dive Analysis
 
![Dashboard Preview](assets/dashboard_preview.jpg)

### 1. Departmental Turnover Rate Analysis
* **Finding**: Analysis reveals severe retention challenges in operational and technical units. **Production** recorded the highest turnover rate at **39.71%** (83 terminations out of 209 headcount), closely followed by **Software Engineering** at **36.36%** (4 out of 11). Executive Office maintained a 0% turnover rate.
* **Key Insight**: Production & Software Engineering exhibit critical turnover rates above 35%, accounting for 87 out of 104 total company terminations.

### 2. Monthly Labor Cost Distribution
* **Finding**: Labor cost allocation among the 207 active employees shows heavy concentration in **Production** ($7.61M/month for 126 active headcount) and **IT/IS** ($3.78M/month for 40 active headcount). Executive Office records the highest average cost per employee ($250,000) despite having only 1 active member.
* **Key Insight**: Production & IT/IS represent **78% of the company's total monthly labor cost expenditure** ($11.39M out of $14.59M).

### 3. Recruitment Source Performance & Compensation Benchmark
* **Finding**: **Indeed** and **LinkedIn** dominate hiring volume, contributing 87 hires ($75.5K avg salary) and 76 hires ($64.9K avg salary) respectively, representing 52% of total recruitment. Employee Referrals offer premium talent with the highest hired salary ($77.8K avg) among high-volume sources.
* **Key Insight**: Indeed & LinkedIn serve as the primary hiring pipeline (163 hires), while Employee Referrals yield higher average compensation ($77.8K).

### 4. Departmental Absence Rate vs. Engagement & Satisfaction
* **Finding**: Comparing attendance and satisfaction scores highlights **Sales** with the highest average absences (**11.5 days/employee**) despite having a relatively high satisfaction score (4.03/5.00). **Admin Offices** recorded the lowest satisfaction score (**3.56/5.00**) with an average of 8.7 absences.
* **Key Insight**: Sales department records the highest employee absenteeism (11.5 days/year), signaling potential burnout despite positive satisfaction scores.

---

## Key Summary & Strategic Business Recommendations

### **Key Summary**
> The company's talent retention is heavily impacted by high turnover in Production (39.71%) and Software Engineering (36.36%). While Indeed and LinkedIn effectively supply candidate pipelines, high absenteeism in Sales and Admin Offices' low satisfaction scores signal systemic engagement and retention risks.

### **Strategic Recommendations**
1. **Optimize Production Retention (Department Strategy)**: Implement structured stay-interviews, competitive wage adjustments, and shift ergonomics in the Production department to reduce the 39.71% turnover rate and protect the $7.61M active labor investment.
2. **Refine Recruitment Channel Allocation (Hiring Strategy)**: Double down on Indeed and LinkedIn as primary talent sourcing channels while scaling up the Employee Referral program to attract high-value talent with proven long-term retention.
3. **Targeted Engagement & Burnout Intervention (HR Strategy)**: Launch mental health and burnout prevention initiatives in Sales to address the 11.5-day average absence rate, and review management practices in Admin Offices to improve the 3.56/5.00 satisfaction score.

---

## Tech Stack & Methodology

* **Database / Data Prep**: PostgreSQL (DBeaver) — Used for data cleaning, column casing fixes, and metric query validation.
* **Visualization**: Tableau — Built interactive dashboards, aggregated KPI fields, and formatted custom currency/percentage charts.
* **Dataset**: `HRDataset_v14` (311 records).

---

## Links & Resources

* **Interactive Tableau Dashboard**: (https://public.tableau.com/views/HRAnalyticsTalentRetentionWorkforceEfficiency/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
* 📁 **Data File**: [`cleaned_hr_dataset.csv`](data/cleaned_hr_dataset.csv)
* 📜 **SQL Queries**: [`hr_analytics_queries.sql`](sql/hr_analytics_queries.sql)
