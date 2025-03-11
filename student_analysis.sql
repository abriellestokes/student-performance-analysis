-- Query 1: Calculate average scores by gender
SELECT gender,
		AVG(math_score) AS avg_math,
        AVG(reading_score) AS avg_reading,
        AVG(writing_score) AS avg_writing
FROM studentsperformance
GROUP BY gender;

-- Query 2: Compare performance by test preparation
SELECT test_preparation_course,
		AVG(math_score) AS avg_math,
        AVG(reading_score) AS avg_reading,
        AVG(writing_score) AS avg_writing
FROM studentsperformance
GROUP BY test_preparation_course;

-- Query 3: Analyze impact of parental education
SELECT parental_education,
		AVG(math_score) AS avg_math,
        AVG(reading_score) AS avg_reading,
        AVG(writing_score) AS avg_writing
FROM studentsperformance
GROUP BY parental_education
ORDER BY avg_math DESC;