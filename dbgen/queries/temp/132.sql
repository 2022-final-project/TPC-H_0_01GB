\o out1.txt
SET random_page_cost = 32;

\timing

SELECT * from orders;

\timing
