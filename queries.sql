/* Part 1: List the columns and their data types in a table */

SELECT
TABLE_CATALOG,
TABLE_SCHEMA,
TABLE_NAME,
COLUMN_NAME,
DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'job' ;

/* Part 2: List the names of employers in St. Louis City */

SELECT * FROM techjobs.employer WHERE location= 'St. Louis City';

/* Part 3: Remove job table */

DROP TABLE techjobs.job;

/* Part 4: Return list of names and descriptions of all skills attached to jobs in alphabetical order
*/

SELECT skill.name, skill.description
FROM techjobs.skill
INNER JOIN techjobs.job_skills ON techjobs.skill.id = techjobs.job_skills.skills_id
ORDER BY skill.name ASC;
