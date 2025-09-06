SELECT 
	s.store_id, 
	s.store_name, 
	p.brand_id,
	COUNT(oi.item_id) as total_vendas,
	SUM(oi.quantity) as quantidade_total
FROM stores s
INNER JOIN ordes o ON s.tore_id = o.store_id
INNER JOIN order_itens oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id
GROUP BY store_id, s.store_name, p.brand_id
ORDER BY s.store_id, p.brand_id;