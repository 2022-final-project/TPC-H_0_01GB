\o out1.txt
SET random_page_cost = 4;

\timing

SELECT * from orders;

\timing
