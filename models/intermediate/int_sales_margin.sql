SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    ROUND(s.quantity*CAST(p.purchase_price AS FLOAT64),2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*CAST(p.purchase_price AS FLOAT64),2) AS margin
FROM {{ ref('stg_data__sales') }} s
left JOIN {{ ref('stg_data__product') }} p
  using (products_id)

