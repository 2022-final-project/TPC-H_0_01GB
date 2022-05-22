-- $ID$
-- TPC-H/TPC-R Forecasting Revenue Change Query (Q6)
-- Functional Query Definition
-- Approved February 1998
\o out6.txt
SET random_page_cost = 32;
SELECT current_setting('random_page_cost');

\timing

select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem
where
	l_shipdate >= date '1995-03-01'
	and l_shipdate < date '1995-03-01' + interval '1 year'
	and l_discount between 0.05 - 0.01 and 0.05 + 0.01
	and l_quantity < 25.00
LIMIT 1;

\timing
