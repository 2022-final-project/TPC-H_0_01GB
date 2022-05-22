\o out1.txt
SET random_page_cost = 8;

\timing

SELECT * from orders;

\timing
