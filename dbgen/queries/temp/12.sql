\o out1.txt
SET random_page_cost = 2;

\timing

SELECT * from orders;

\timing
