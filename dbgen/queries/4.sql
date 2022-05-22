-- $ID$
-- TPC-H/TPC-R Order Priority Checking Query (Q4)
-- Functional Query Definition
-- Approved February 1998
\o out4.txt
SET random_page_cost = 32;
SELECT current_setting('random_page_cost');

\timing

select
	o_orderpriority,
	count(*) as order_count
from
	orders
where
	o_orderdate >= date '1995-03-01'
	and o_orderdate < date '1995-03-01' + interval '3 month'
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority
LIMIT 1;

\timing
