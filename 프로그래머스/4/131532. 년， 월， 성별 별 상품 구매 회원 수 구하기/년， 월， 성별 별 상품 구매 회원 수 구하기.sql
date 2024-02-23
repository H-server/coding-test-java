SELECT YEAR(B.SALES_DATE) AS YEAR, MONTH(B.SALES_DATE) AS MONTH, A.GENDER, COUNT(DISTINCT(B.USER_ID)) AS USERS
FROM USER_INFO A 
JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID
WHERE A.GENDER IS NOT NULL
GROUP BY YEAR(B.SALES_DATE), MONTH(B.SALES_DATE), A.GENDER
ORDER BY YEAR, MONTH, GENDER