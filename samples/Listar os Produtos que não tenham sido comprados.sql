SELECT p.product_id, p.product_name, p.brand_id, p.category_id
FROM products p
LEFT JOIN order_items oi ON p.product_id
WHERE oi.order_id IS NULL;