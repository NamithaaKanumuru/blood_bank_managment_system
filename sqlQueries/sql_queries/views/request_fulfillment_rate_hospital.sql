CREATE OR REPLACE VIEW Request_Fulfillment_Rate AS
SELECT 
    H.Hospital_ID,
    H.Hospital_Name,
    COUNT(CASE WHEN BR.Status = 'Fulfilled' THEN 1 END) AS Fulfilled_Requests,
    COUNT(BR.Request_ID) AS Total_Requests,
    ROUND(
        COUNT(CASE WHEN BR.Status = 'Fulfilled' THEN 1 END) / 
        NULLIF(COUNT(BR.Request_ID), 0) * 100, 
        2
    ) AS Fulfillment_Percentage
FROM 
    Hospital H
LEFT JOIN Blood_Request BR ON H.Hospital_ID = BR.Hospital_ID
GROUP BY 
    H.Hospital_ID, 
    H.Hospital_Name;