-- 코드를 입력하세요
-- FOOD_PRODUCT 테이블에서 식품분류별로 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회하는 SQL문을 작성해주세요. 이때 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력시켜 주시고 결과는 식품 가격을 기준으로 내림차순 정렬해주세요.
SELECT A.CATEGORY, A.PRICE AS MAX_PRICE, A.PRODUCT_NAME
FROM FOOD_PRODUCT A JOIN (
    SELECT CATEGORY, MAX(PRICE) AS PRICE
    FROM FOOD_PRODUCT 
    GROUP BY CATEGORY
    HAVING CATEGORY IN ('과자', '국', '김치', '식용유') 
    ORDER BY PRICE DESC
) B
ON A.CATEGORY = B.CATEGORY
AND A.PRICE = B.PRICE
ORDER BY MAX_PRICE DESC;