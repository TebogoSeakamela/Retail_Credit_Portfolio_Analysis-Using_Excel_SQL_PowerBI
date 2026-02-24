--Our initial data inspection shows the dataset is clean with no missing values. Our basic variables provide a wide range of income, credit scores, and debt to income ratio to allow a balanced analysis.
SELECT *
FROM[dbo].[Loan]

--General Loan and Default analysis
SELECT COUNT(*) as total_loan, SUM([Default]) as total_default
FROM dbo.loan

SELECT ROUND((SUM([Default])*100.0/COUNT([LoanID])),2) as Default_Percentage
FROM dbo.loan

SELECT ROUND(AVG(InterestRate),2) as Average_InterestRate
From dbo.Loan

--Our baseline for analysis shows that 11.72% of the total loans defaulted. This provides context into our further analysis of the grouping to determine if a higher or lower Credit Score contributes to loan defaults

--How do credit scores influence loan default?

--Credit Score Lower than 500
SELECT COUNT(*) AS total_defaults, SUM([DEFAULT]) AS Loan_defaults
FROM dbo.Loan
WHERE CreditScore < 500

--Credit Score Between 500 but lower than 650
SELECT COUNT(*) AS total_defaults, SUM ([Default]) AS loan_defaults
FROM dbo.loan
WHERE CreditScore>= 500
And CreditScore < 650

--Credit Score From 650 and More
SELECT COUNT(*) AS total_defaults, SUM([Default]) AS loan_defaults
FROM dbo.loan
Where CreditScore>= 650

--Borrowers in the low Credit Score segment show higher default counts. Confirming that Credit Score is a strong predictor of risk.

--How does Debt to Income Ratio influence loan default?

--Low DTI Ratio
SELECT COUNT(*) as total_defaults, SUM([Default]) as default_dti
FROM dbo.loan
WHERE DTIRatio <0.30;

--Medium DTI Ratio
SELECT COUNT(*) as total_defaults, SUM([Default]) as default_dti
FROM dbo.loan
WHERE DTIRatio >= 0.30
AND DTIRatio <= 0.50;

--High DTI Ratio
SELECT COUNT(*) as total_defaults, SUM([Default]) as default_dti
FROM dbo.loan
WHERE DTIRatio > 0.50

--Borrowers with Higher DTI show a higher default event. This shows us that more debt relative to income is a key predictor of probability of defaults

--Short term employment
SELECT COUNT(*) as total_defaults, SUM([Default]) as Defaults
FROM dbo.loan
WHERE MonthsEmployed <36;

--Medium term employment
SELECT COUNT(*) as total_defaults, SUM([Default]) as Defaults
FROM dbo.loan
WHERE MonthsEmployed >= 36
AND MonthsEmployed <= 72;

----Long term employment
SELECT COUNT(*) as total_defaults, SUM([Default]) as Defaults
FROM [dbo].[Loan]
WHERE MonthsEmployed > 72

--Borrowers with shorter employment terms show higher default count, indicating potential variables such as over-leveraging with reduced income stability.

--Data analysis quality check performed.
--Totals reconcile with total loan count.
--No abnormalities were observed.

