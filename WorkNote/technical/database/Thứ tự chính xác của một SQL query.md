
1. `SELECT`
2. `FROM`
3. `JOIN` (if any)
4. `WHERE`
5. `GROUP BY`
6. `HAVING` (if any)
7. `ORDER BY` (if any)

### Corrected Query:

`SELECT ss.section_code, s.name FROM     section_scale ss LEFT JOIN sections s ON     s.code = ss.section_code LEFT JOIN act_scale a_s ON     a_s.section_code = ss.section_code LEFT JOIN claim_detail cd ON     cd.act_code = a_s.act_code LEFT JOIN claim c ON     c.no = cd.claim_no WHERE     cd.claim_no = '1274274' GROUP BY     ss.section_code;`

### Key Changes:

1. Moved the `WHERE` clause above `GROUP BY`.
2. Ensured proper alignment with SQL syntax rules.

### Additional Considerations:

- **Grouping Columns:** If you group by `ss.section_code`, all selected columns should either be in the `GROUP BY` clause or use aggregate functions (like `COUNT`, `SUM`, etc.). If `s.name` can have multiple values for a single `ss.section_code`, you should clarify which value you want or aggregate it.
- **Debugging Tip:** Run the query incrementally to ensure each step works:
    - Test the `WHERE` clause.
    - Test the joins.
    - Add `GROUP BY` only if needed for aggregation.

---
## Liên quan

#sql #mariabDB #sqlsyntax