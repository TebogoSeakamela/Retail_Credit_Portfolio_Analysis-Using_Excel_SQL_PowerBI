## Project overview
This portfolio explores a retail credit portfolio to understand how loans in the portfolio are distributed and any patterns of risk across the borrower's characteristics and selected loan characteristics.

With the use of SQL aggregations, segmentation and visualizing risk patterns through Power BI, my aim was to demonstrate the ability to interrogate raw financial data and transform it into actionable insights portfolio monitoring. The analysis focuses on default rates, default counts and segmentation across each borrower's metrics such as Credit score, Debt to Income ratio, the reason for the loan and employment history.

## Hypothesis
Borrowers with lower Credit Scores are more likely to default
Borrowers with higher Debt to Income Ratios are more likely to default
Borrowers with shorter employment history default more than those who have been employed for relatively longer

## Constraints
Credit Score
Loan Amount
Loan Term
Debt to Income Ratio
Months employed
Interest Rate
We will ignore external factors, i.e. economic conditions etc., for simplicity of this project.

## Analysis Approach
Data Preparation: Excel used to replace "Auto" to " Vehicle" to align terminology with local industry standards and check for any missing values
Segmentation: SQL used to group borrowers by Credit Score tiers, DTI tiers and employment duration
Aggregation: Calculated total borrower's, default counts and default rates by segment.
Dashboard Development: Power BI used to build visuals that include top summary cards, doughnut charts, loan table and interactive slicers 

## Datasets
* This project uses a **synthesized retail loan dataset sourced from Kaggle**
* The data is **anonymized** and contains no personally identifiable information


## Key Findings
Borrowers in the low Credit Score segment show higher default counts. Confirming that Credit Score is a strong predictor of risk.
Borrowers with a higher Debt-to Income ratio show increased defaulted rates indicating that thinner repayment capacity increases risk of default.
Borrowers with shorter employment terms show higher default count, indicating that potential variables such as over-leveraging while having reduced income stability may constraint borrowers from meeting repayment obligations
