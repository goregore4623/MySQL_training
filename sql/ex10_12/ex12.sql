-- ex12
SELECT department AS '部門', COUNT(*) AS '人数' FROM employees
GROUP BY department;