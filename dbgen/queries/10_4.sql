-- $ID$
-- TPC-H/TPC-R Returned Item Reporting Query (Q10)
-- Functional Query Definition
-- Approved February 1998
\o out10.txt
SET random_page_cost = 4;
\timing

select
	c_custkey,
	c_name,
	sum(l_extendedprice * (1 - l_discount)) as revenue
	--c_acctbal,
	--n_name,
	--c_address,
	--c_phone,
	--c_comment
from
	customer,
	orders,
	lineitem,
	nation
where
	c_custkey = o_custkey
	and l_orderkey = o_orderkey
	and o_orderdate >= date '1995-03-01'
	and o_orderdate < date '1995-03-01' + interval '3' month
	and l_returnflag = 'R'
	and c_nationkey = n_nationkey
group by
	c_custkey,
	c_name,
	c_acctbal,
	c_phone,
	n_name,
	c_address,
	c_comment
order by
	revenue desc
LIMIT 1;

\timing

-- Default : LIMIT 20 
