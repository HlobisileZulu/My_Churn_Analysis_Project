SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100 / (Select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group by Count(Gender) ASC; 

 

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100 / (Select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group by count(Contract) ASC;
 

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status;
 

SELECT State, Count(State) as TotalCount,
Count(State) * 100 / (Select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group by State
Order by Percentage desc;