CREATE TABLE prod_Churn AS
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,

    CASE 
        WHEN Value_Deal IS NULL OR TRIM(Value_Deal) = '' THEN 'None'
        ELSE Value_Deal
    END AS Value_Deal,

    Phone_Service,

    CASE 
        WHEN Multiple_Lines IS NULL OR TRIM(Multiple_Lines) = '' THEN 'No'
        ELSE Multiple_Lines
    END AS Multiple_Lines,

    Internet_Service,

    CASE 
        WHEN Internet_Type IS NULL OR TRIM(Internet_Type) = '' THEN 'None'
        ELSE Internet_Type
    END AS Internet_Type,

    CASE 
        WHEN Online_Security IS NULL OR TRIM(Online_Security) = '' THEN 'No'
        ELSE Online_Security
    END AS Online_Security,

    CASE 
        WHEN Online_Backup IS NULL OR TRIM(Online_Backup) = '' THEN 'No'
        ELSE Online_Backup
    END AS Online_Backup,

    CASE 
        WHEN Device_Protection_Plan IS NULL OR TRIM(Device_Protection_Plan) = '' THEN 'No'
        ELSE Device_Protection_Plan
    END AS Device_Protection_Plan,

    CASE 
        WHEN Premium_Support IS NULL OR TRIM(Premium_Support) = '' THEN 'No'
        ELSE Premium_Support
    END AS Premium_Support,

    CASE 
        WHEN Streaming_TV IS NULL OR TRIM(Streaming_TV) = '' THEN 'No'
        ELSE Streaming_TV
    END AS Streaming_TV,

    CASE 
        WHEN Streaming_Movies IS NULL OR TRIM(Streaming_Movies) = '' THEN 'No'
        ELSE Streaming_Movies
    END AS Streaming_Movies,

    CASE 
        WHEN Streaming_Music IS NULL OR TRIM(Streaming_Music) = '' THEN 'No'
        ELSE Streaming_Music
    END AS Streaming_Music,

    CASE 
        WHEN Unlimited_Data IS NULL OR TRIM(Unlimited_Data) = '' THEN 'No'
        ELSE Unlimited_Data
    END AS Unlimited_Data,

    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,

    CASE 
        WHEN Churn_Category IS NULL OR TRIM(Churn_Category) = '' THEN 'Others'
        ELSE Churn_Category
    END AS Churn_Category,

    CASE 
        WHEN Churn_Reason IS NULL OR TRIM(Churn_Reason) = '' THEN 'Others'
        ELSE Churn_Reason
    END AS Churn_Reason

FROM stg_Churn;
