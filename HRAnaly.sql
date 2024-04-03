use p375;
##  employee count

SELECT COUNT(*) AS EmployeeCount FROM maindata1;

## attrition count

SELECT COUNT(*) AS AttritionCount FROM maindata1 WHERE Attrition = 'Yes';

## attrition rate

SELECT (COUNT(*) / (SELECT COUNT(*) FROM maindata1)) * 100 AS AttritionRate FROM maindata1 WHERE Attrition = 'Yes';

## active employee

SELECT COUNT(*) AS ActiveEmployees FROM maindata1 WHERE Attrition = 'No';

## average attrition rate for all departments

SELECT Department, AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AvgAttritionRate FROM maindata1 GROUP BY Department;

## average hourly rate of male  reaserch scientists

SELECT AVG(HourlyRate) AS AvgHourlyRate FROM maindata1 WHERE Gender = 'Male' AND JobRole = 'Research Scientist';

##  Gender based Percentage of Employee

SELECT Gender, COUNT(*) AS EmployeeCount, 
       (COUNT(*) / (SELECT COUNT(*) FROM maindata1)) * 100 AS Percentage
FROM maindata1
GROUP BY Gender;

## Departmentwise No of Employees

SELECT Department, COUNT(*) AS EmployeeCount
FROM maindata1
GROUP BY Department;


##  Count of Employees based on Educational Fields

SELECT EducationField, COUNT(*) AS EmployeeCount
FROM maindata1
GROUP BY EducationField;

##  department /job role wise job satisfaction 

SELECT Department, JobRole, AVG(JobSatisfaction) AS AvgJobSatisfaction
FROM maindata1
GROUP BY Department, JobRole;

##  average working years for each department 

SELECT Department, AVG(TotalWorkingYears) AS AvgWorkingYears
FROM maindata1
GROUP BY Department;

## Job Role Vs Work life balance

SELECT JobRole, WorkLifeBalance, COUNT(*) AS EmployeeCount
FROM maindata1
GROUP BY JobRole, WorkLifeBalance;



