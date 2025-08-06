WITH sales AS (
    SELECT
          Region
        , Country
        , ItemType
        , SalesChannel
        , Amount
    FROM
        bronze.raw_sales
)

SELECT * FROM sales