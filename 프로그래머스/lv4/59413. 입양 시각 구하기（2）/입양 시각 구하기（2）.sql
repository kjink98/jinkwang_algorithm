-- 코드를 입력하세요
--보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.
SELECT
A.HOUR,
count(B.TIME) count
FROM (SELECT LEVEL-1 HOUR FROM dual CONNECT BY LEVEL <25) A,
(SELECT to_char(datetime,'HH24') TIME FROM ANIMAL_OUTS) B
WHERE A.HOUR = B.TIME(+)
GROUP BY A.HOUR
ORDER BY A.HOUR;