
-- 1
-- INSERT INTO rental_records (rental_id, veh_reg_no, customer_id, start_date, end_date, lastUpdated)
-- VALUES(
--     NULL, 
--     'SBA1111A', 
--     (SELECT customer_id FROM customers WHERE name = 'Angel'),
--     CURDATE(),
--     DATE_ADD(CURDATE(), INTERVAL 10 DAY),
--     NULL
--     );

-- 2
-- INSERT INTO rental_records (rental_id, veh_reg_no, customer_id, start_date, end_date, lastUpdated)
-- VALUES(
--      NULL, 
--    'GA5555E', 
--      (SELECT customer_id FROM customers WHERE name = 'kumar'),
--      DATE_ADD(CURDATE(), INTERVAL 1 DAY),
--      DATE_ADD(CURDATE(), INTERVAL 3 Month),
--      NULL
--     );


-- 3
-- SELECT
--    r.start_date  AS `Start Date`,
--    r.end_date    AS `End Date`,
--    r.veh_reg_no  AS `Vehicle No`,
--    v.brand       AS `Vehicle Brand`,
--    c.name        AS `Customer Name`
-- FROM rental_records AS r
--    INNER JOIN vehicles  AS v USING (veh_reg_no)
--    INNER JOIN customers AS c USING (customer_id)
-- ORDER BY v.category, start_date;

-- 4
-- SELECT * FROM rental_records
-- WHERE end_date < curdate();

-- 5
  -- SELECT
--     r.start_date  AS `Start Date`,
--     r.end_date    AS `End Date`,
--     r.veh_reg_no  AS `Vehicle No`,
--     c.name        AS `Customer Name`
--  FROM rental_records AS r
--     INNER JOIN vehicles  AS v USING (veh_reg_no)
--     INNER JOIN customers AS c USING (customer_id)
--     WHERE ('2012-01-10' BETWEEN start_date AND end_date);


-- 6
--   SELECT
--     r.veh_reg_no  AS `Vehicle No`,
--      c.name        AS `Customer Name`,
--      r.start_date  AS `Start Date`,
--     r.end_date    AS `End Date`
--  FROM rental_records AS r
--      INNER JOIN vehicles  AS v USING (veh_reg_no)
--      INNER JOIN customers AS c USING (customer_id)
--      WHERE (start_date = curdate());

-- 7 
--  SELECT
--      r.veh_reg_no  AS `Vehicle No`,
--        v.brand       AS `Vehicle Brand`
--   FROM rental_records AS r
--      INNER JOIN vehicles  AS v USING (veh_reg_no)
--      INNER JOIN customers AS c USING (customer_id)
--       WHERE (start_date BETWEEN '2012-01-03' AND '2012-01-18')
-- 			OR (end_date BETWEEN '2012-01-03' AND '2012-01-1')
--             OR(start_date <= '2012-01-03' AND end_date > '2012-01-18')
            
-- 8
-- SELECT
--      r.veh_reg_no  AS `Vehicle No`,
--      r.start_date  AS `Start Date`,
--      r.end_date    AS `End Date`,
--        v.brand       AS `Vehicle Brand`,
--        v.desc AS `Vehicle Description`
--   FROM rental_records AS r
--      INNER JOIN vehicles  AS v USING (veh_reg_no)
--      INNER JOIN customers AS c USING (customer_id)
--       WHERE NOT ('2012-01-10' BETWEEN start_date and end_date)
      
-- 9
--  SELECT 
--        r.veh_reg_no  AS `Vehicle No`,
--        r.start_date  AS `Start Date`,
--        r.end_date    AS `End Date`,
--          v.brand       AS `Vehicle Brand`,
--          v.desc AS `Vehicle Description`
--     FROM rental_records AS r
--        INNER JOIN vehicles  AS v USING (veh_reg_no)
--        INNER JOIN customers AS c USING (customer_id)
--        WHERE NOT (start_date BETWEEN '2012-01-03' AND '2012-01-18')
--         OR (end_date BETWEEN '2012-01-03' AND '2012-01-18')
--         OR ((start_date < '2012-01-03') AND (end_date > '2012-01-18'))

-- 10
 -- SELECT 
--         r.veh_reg_no  AS `Vehicle No`,
--         r.start_date  AS `Start Date`,
--         r.end_date    AS `End Date`,
--           v.desc AS `Vehicle Description`
--      FROM rental_records AS r
--       INNER JOIN vehicles  AS v USING (veh_reg_no)
--         INNER JOIN customers AS c USING (customer_id)
--        WHERE (start_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 10 DAY)) 
-- 		OR (end_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 10 DAY))
--         OR ((start_date < CURDATE()) AND (end_date > DATE_ADD(CURDATE(), INTERVAL 10 DAY)));
