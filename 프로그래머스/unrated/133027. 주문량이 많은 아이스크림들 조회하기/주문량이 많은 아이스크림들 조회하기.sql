-- 코드를 입력하세요
-- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.
SELECT F.FLAVOR
FROM FIRST_HALF F, JULY J
WHERE F.FLAVOR = J.FLAVOR
GROUP BY F.FLAVOR
ORDER BY SUM(F.TOTAL_ORDER + J.TOTAL_ORDER) DESC
FETCH FIRST 3 ROWS ONLY;