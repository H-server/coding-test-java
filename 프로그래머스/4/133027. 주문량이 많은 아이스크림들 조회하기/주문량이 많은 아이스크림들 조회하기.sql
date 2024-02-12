SELECT A.FLAVOR
FROM FIRST_HALF AS A JOIN JULY AS B ON A.FLAVOR = B.FLAVOR
GROUP BY A.FLAVOR
ORDER BY SUM(A.TOTAL_ORDER + B.TOTAL_ORDER) DESC
LIMIT 3