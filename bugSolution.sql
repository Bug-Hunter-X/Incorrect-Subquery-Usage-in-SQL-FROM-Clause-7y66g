The correct way to write the query is to use JOIN explicitly.

```sql
SELECT T1.column1, T2.column2
FROM table1 AS T1
INNER JOIN table2 AS T2 ON T1.column1 = T2.column2;
```

Alternatively, a subquery can be used in the WHERE clause or with a JOIN clause:

```sql
SELECT T1.column1, T2.column2
FROM table1 AS T1, table2 AS T2
WHERE T1.column1 = T2.column2 AND T1.column1 in (select column1 from table3);

-- Or using JOIN explicitly
SELECT T1.column1, T2.column2
FROM table1 AS T1
INNER JOIN table2 AS T2 ON T1.column1 = T2.column2
WHERE T1.column1 in (select column1 from table3);
```
These revisions ensure the query performs the intended join operation and provides the correct result set.