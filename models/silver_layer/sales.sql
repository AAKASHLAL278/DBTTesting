WITH sales AS (
    SELECT
          SalesID
        , Region
        , Country
        , ItemType
        , SalesChannel
        , Amount
    FROM
        bronze.raw_sales
)

SELECT SalesID, Region, initcap(Country) AS Country, ItemType, SalesChannel, Amount,
         CASE
              WHEN SalesChannel = 'Online' THEN 'E-commerce'
              ELSE 'Retail'
         END AS SalesChannelType
 FROM sales