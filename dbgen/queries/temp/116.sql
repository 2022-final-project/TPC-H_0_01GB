\o out1.txt
SET random_page_cost = 16;

\timing

SELECT * from orders;

\timing
