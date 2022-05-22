for i in {1..3}
	do
		psql tpch4 < 9_1.sql
	done

for i in {1..3}
	do
		psql tpch4 < 9_2.sql
	done

for i in {1..3}
	do
		psql tpch4 < 9_4.sql
	done

for i in {1..3}
	do
		psql tpch4 < 9_8.sql
	done

for i in {1..3}
	do
		psql tpch4 < 9_16.sql
	done

for i in {1..3}
	do
		psql tpch4 < 9_32.sql
	done

