// 1 
SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT;

// 2
SELECT DEPARTMENT_NAME ||'의 정원은 '|| CAPACITY || '명 입니다.' 
FROM TB_DEPARTMENT;

// 3 
SELECT STUDENT_NAME FROM TB_STUDENT 
WHERE SUBSTR(STUDENT_SSN, 8, 1) IN (2, 4) AND DEPARTMENT_NO = '001' AND ABSENCE_YN = 'Y';

// 4
SELECT STUDENT_NAME FROM TB_STUDENT WHERE STUDENT_NO IN ('A513090' , 'A513079', 'A513091', 'A513110', 'A513119');

// 5
SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT WHERE CAPACITY BETWEEN 20 AND 30;

// 6 
SELECT PROFESSOR_NAME, DEPARTMENT_NO FROM TB_PROFESSOR WHERE DEPARTMENT_NO IS NULL;

// 7 
SELECT DEPARTMENT_NO, STUDENT_NAME FROM TB_STUDENT WHERE DEPARTMENT_NO IS NULL;

// 8
SELECT CLASS_NO FROM TB_CLASS WHERE PREATTENDING_CLASS_NO IS NOT NULL;

// 9
SELECT DISTINCT CATEGORY FROM TB_DEPARTMENT;

// 10
SELECT STUDENT_NO, STUDENT_NAME, STUDENT_SSN, DEPARTMENT_NO 
FROM TB_STUDENT 
WHERE ABSENCE_YN = 'N' AND STUDENT_ADDRESS LIKE '%전주시%' AND STUDENT_NO LIKE '%A2%';