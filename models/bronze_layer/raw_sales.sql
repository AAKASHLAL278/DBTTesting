{{ config(
    materialized='incremental',
    unique_key='SalesID',
    incremental_strategy='merge'
) }}

WITH sales AS (
    SELECT
          SalesID 
        , Region
        , Country
        , ItemType
        , SalesChannel
        , Amount
    FROM
        SESSION13SCH.raw_SALES
    {% if is_incremental() %}
    WHERE SalesID NOT IN (SELECT SalesID FROM {{ this }})
    {% endif %}
)

SELECT * FROM sales
