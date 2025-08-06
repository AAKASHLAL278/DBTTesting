WITH sales AS (
    SELECT
          Region
        , Country
        , ItemType
        , SalesChannel
        , Amount
    FROM
        SESSION13SCH.SALES
)

SELECT * FROM sales