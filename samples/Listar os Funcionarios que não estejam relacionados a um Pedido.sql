SELECT st.staff_id, st.first_name, st.last_name, st.email, st.store_id
FROM staff st
LEFT JOIN orders o ON st.staff_id = o.staff_id
WHERE o.order_id IS NULL;