CREATE VIEW view_churn as
	Select * FROM prod_churn where Customer_Status in ('Churned', 'Stayed');
    
CREATE VIEW view_join as
	Select * FROM prod_churn where Customer_Status = 'Joined';
    