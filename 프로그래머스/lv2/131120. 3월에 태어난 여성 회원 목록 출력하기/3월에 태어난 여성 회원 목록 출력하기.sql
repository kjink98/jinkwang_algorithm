-- 코드를 입력하세요
-- MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성해주세요. 이때 전화번호가 NULL인 경우는 출력대상에서 제외시켜 주시고, 결과는 회원ID를 기준으로 오름차순 정렬해주세요.
SELECT MEMBER_ID, MEMBER_NAME, GENDER, TO_CHAR(DATE_OF_BIRTH, 'YYYY-MM-DD') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE TLNO IS NOT NULL AND TO_CHAR(DATE_OF_BIRTH, 'MM') = 3 AND GENDER = 'W'
ORDER BY MEMBER_ID ASC;