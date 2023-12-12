SELECT * FROM "STUDENT";
-- ----------------------------------------------------------
-- EXPORT STUDENT TABLE RECORDS TO STUDENTS.CSV FILE --
--C:\Users\PC\Desktop\DDD_ITK51_07_06_2021\EXPORTED_CSV_FILES --
-- ----------------------------------------------------------

COPY "STUDENT" TO 'C:\Users\PC\Desktop\DDD_ITK51_07_06_2021\EXPORTED_CSV_FILES\STUDENT.CSV'
DELIMITER ',' CSV HEADER; -- This does not wotk THE SERVER THINKS IT DOES NOT HAVE PERMISSION TO WRITE
                          -- TO THE SPECIFIED LOCATION 

COPY "STUDENT" TO 'C:\Users\Public\EXPORTED_CSV_FILES\STUDENT.CSV'
DELIMITER ',' CSV HEADER; -- This works as SERVER THINKS IT DOES HAVE PERMISSION TO WRITE
                          -- TO THE SPECIFIED PUBLIC LOCATION
-- ----------------------------------------------------------
-- IMPORT STUDENT STUDENTS.CSV  RECORDS TO "STUDENT" TABLE -- 
-- ----------------------------------------------------------
COPY "STUDENT" 
FROM 'C:\Users\PC\Desktop\DDD_ITK51_07_06_2021'
DELIMITER ','CSV HEADER;						  

SELECT * FROM "SUBJECT";

COPY "SUBJECT" TO 'C:\Users\Public\EXPORTED_CSV_FILES\SUBJECT.CSV'
DELIMITER ',' CSV HEADER;

SELECT * FROM "FACULTY";

SELECT * FROM "FACULTY"
WHERE fid='GEO'OR fid='GEO' OR fid='GEO'OR fid='GEO' OR
fid='LEGEL' OR fid='BM' OR fid='HM';

COPY (SELECT * FROM "FACULTY"
WHERE fid='GEO'OR fid='GEO' OR fid='GEO'OR fid='GEO' OR
fid='LEGEL' OR fid='BM' OR fid='HM')
TO 'C:\Users\Public\EXPORTED_CSV_FILES\FACULTY1.CSV'
DELIMITER ',' CSV HEADER;

