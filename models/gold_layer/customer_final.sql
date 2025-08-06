WITH customers AS (
    SELECT
        customer_id,
        name,
        age,
       CONCAT(mobile,'777') AS mobile,  -- Assuming you want to append '777' to the mobile number
        address
    FROM
        silver.customer
    
)

SELECT * FROM customers