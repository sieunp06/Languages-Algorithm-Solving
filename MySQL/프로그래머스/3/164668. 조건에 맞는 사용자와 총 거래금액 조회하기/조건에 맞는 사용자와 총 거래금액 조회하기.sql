-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, TOTAL_SALES
FROM USED_GOODS_USER T1 JOIN (SELECT WRITER_ID, SUM(PRICE) AS TOTAL_SALES
                          FROM USED_GOODS_BOARD
                          WHERE STATUS = 'DONE'
                          GROUP BY WRITER_ID
                          HAVING TOTAL_SALES >= 700000) T2
    ON T1.USER_ID = T2.WRITER_ID
ORDER BY TOTAL_SALES;