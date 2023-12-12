--Create a table

CREATE TABLE "CITY_INFO"(
City_Name varchar(80) PRIMARY KEY,
	Country varchar(20),
	Pop int NOT NULL,
	Lat numeric(4,2),
	Long numeric(4,2)
);
SELECT * FROM "CITY_INFO";
--BASIC METHOD
INSERT INTO "CITY_INFO"(City_Name,Country,Pop,Lat,Long) 
VALUES
('COLOMBO','Sri Lanka',648034,6.93194,79.8478),
('DEHIWALA-MOUNT LAVINIA','Sri Lanka',219827,6.84019,79.8712),
('MORATUWA','Sri Lanka',185031,6.773,79.8816);
SELECT * FROM "CITY_INFO";

DELETE FROM  "CITY_INFO";
--BEST METHOD : CSV FILE IMPORT
COPY "CITY_INFO" (City_Name,Country,Pop,Lat,Long)
FROM 'C:\Users\Public\SL_City_Info\LK_CITY3.csv' 
DELIMITER ',' CSV HEADER 

SELECT * FROM "CITY_INFO";

--BEST METHOD : CSV FILE EXPORT
COPY "CITY_INFO" (City_Name,Country,Pop,Lat,Long)
TO 'C:\Users\Public\SL_City_Info\CITY_INFO_EXPORTED.csv' 
DELIMITER ',' CSV HEADER 

--CONVERT INTO GEO SPATIAL DATABASE
CREATE EXTENSION postgis;  --postgis is the geo spatial data
						   --model
SELECT * FROM "spatial_ref_sys";
SELECT * FROM "spatial_ref_sys" -- Sri Lanka Geo referencing 
WHERE srid=5234;                -- system

--shape file table info

SELECT * FROM "roads";