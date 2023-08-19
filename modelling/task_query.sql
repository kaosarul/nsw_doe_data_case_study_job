--- create table 2022 Multi age_composite classe
CREATE TABLE multi_age_composite_dataset AS SELECT * FROM READ_CSV_AUTO('./data/2022_multi_age_composite_classes_final.csv');
--- create table 2022 Attendance rates by Government Schools
CREATE TABLE student_attendance_dataset AS SELECT * FROM READ_CSV_AUTO('./data/2022-attendance-data-final.csv');

--- Update table names
ALTER TABLE multi_age_composite_dataset RENAME COLUMN 'School Code' TO School_code;
ALTER TABLE multi_age_composite_dataset RENAME COLUMN 'School Name' TO School_name;

--- 
ALTER TABLE student_attendance_dataset RENAME COLUMN 'school_code' TO School_code;
ALTER TABLE student_attendance_dataset RENAME COLUMN 'school_name' TO School_name;

CREATE TABLE student_attendance_dataset_new AS 
SELECT School_code, School_name,  2011,	2012,	2013,	2014,	2015,	2016,	2017,	2018,	2019,	2021,	2022
FROM student_attendance_dataset;

RENAME TABLE student_attendance_dataset_new TO student_attendance_dataset