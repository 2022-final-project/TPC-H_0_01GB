for i in {1..3}
	do
		psql tpch2 < 10_1.sql
	done

for i in {1..3}
	do
		psql tpch2 < 10_2.sql
	done

for i in {1..3}
	do
		psql tpch2 < 10_4.sql
	done

for i in {1..3}
	do
		psql tpch2 < 10_8.sql
	done

for i in {1..3}
	do
		psql tpch2 < 10_16.sql
	done

for i in {1..3}
	do
		psql tpch2 < 10_32.sql
	done

