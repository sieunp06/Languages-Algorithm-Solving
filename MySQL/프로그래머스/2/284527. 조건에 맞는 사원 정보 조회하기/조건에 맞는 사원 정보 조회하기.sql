-- 코드를 작성해주세요
SELECT SUM(SCORE) AS SCORE, HR_EMPLOYEES.EMP_NO, EMP_NAME, POSITION, EMAIL
FROM HR_EMPLOYEES JOIN HR_GRADE
    ON HR_EMPLOYEES.EMP_NO = HR_GRADE.EMP_NO
GROUP BY HR_GRADE.EMP_NO
ORDER BY SCORE DESC
LIMIT 1;