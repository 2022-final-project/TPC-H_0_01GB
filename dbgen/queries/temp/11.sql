\o out1.txt
SET random_page_cost = 1;

\timing

SELECT * from orders;

\timing
