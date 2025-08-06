WITH sales AS (
    SELECT
          Region
        , Country
        , ItemType
        , SalesChannel
        , Amount
    FROM
        silver.sales
    WHERE Amount>10000
)

SELECT *FROM sales