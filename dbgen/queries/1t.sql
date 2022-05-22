-- $ID$
-- TPC-H/TPC-R Pricing Summary Report Query (Q1)
-- Functional Query Definition
-- Approved February 1998
\o out1.txt
SET random_page_cost = 2;
SELECT current_setting('random_page_cost');
\timing

select
	l_returnflag,
	l_linestatus
from
	lineitem
where
	l_shipdate <= date '1998-12-01' - interval '3 day'
group by
	l_returnflag,
	l_linestatus
order by
	l_returnflag,
	l_linestatus

LIMIT 1;
\timing
