for i in $(seq 1 22);
do
  ii=$(printf "%02d" $i)
  mkdir -p "../queries"
  DSS_QUERY=queries ./qgen $i >../queries/q$ii.sql
  # sed 's/^select/explain select/' ../queries/q$ii.sql > ../queries/q$ii.explain.sql
  # sed 's/^select/explain analyze select/' ../queries/q$ii.sql > ../queries/q$ii.analyze.sql
done
