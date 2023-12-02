#solution1: to list all candidates who possess all the skill
-- Create table
CREATE TABLE technology (
    ID INTEGER,
    technology VARCHAR(50) NOT NULL
);

-- Insert data
INSERT INTO technology VALUES
(1, 'DS'),
(1, 'POWERBI'),
(1, 'PYTHON'),
(1, 'SQL'),
(2, 'POWERBI'),
(2, 'PYTHON'),
(2, 'SQL'),
(3, 'POWERBI'),
(3, 'PYTHON'),
(3, 'SQL');

-- Select all rows from the table
SELECT * FROM technology;

-- Select IDs where technology is "DS", "SQL", or "PYTHON"
SELECT DISTINCT ID
FROM technology
WHERE technology IN ('DS', 'SQL', 'PYTHON');

-- Select IDs where technology is "DS", "SQL", and "PYTHON"
SELECT DISTINCT t1.ID
FROM technology t1
JOIN technology t2 ON t1.ID = t2.ID
JOIN technology t3 ON t1.ID = t3.ID
WHERE t1.technology = 'DS'
  AND t2.technology = 'SQL'
  AND t3.technology = 'PYTHON';
  
#solution2: query to return IDS of two product that have 0 likes
CREATE TABLE technology (
    ID INTEGER,
    technology VARCHAR(50) NOT NULL
);

-- Insert data
INSERT INTO technology VALUES
(1, 'DS'),
(1, 'POWERBI'),
(1, 'PYTHON'),
(1, 'SQL'),
(2, 'POWERBI'),
(2, 'PYTHON'),
(2, 'SQL'),
(3, 'POWERBI'),
(3, 'PYTHON'),
(3, 'SQL');

-- Select all rows from the table
SELECT * FROM technology;

-- Select IDs where technology is "DS", "SQL", or "PYTHON"
SELECT DISTINCT ID
FROM technology
WHERE technology IN ('DS', 'SQL', 'PYTHON');

-- Select IDs where technology is "DS", "SQL", and "PYTHON"
SELECT DISTINCT t1.ID
FROM technology t1
JOIN technology t2 ON t1.ID = t2.ID
JOIN technology t3 ON t1.ID = t3.ID
WHERE t1.technology = 'DS'
  AND t2.technology = 'SQL'
  AND t3.technology = 'PYTHON';
  
#solution2: Query to return the IDS from the products info that have 0 like 
  -- Create the likes table
CREATE TABLE likes (
    user_id INT,
    product_id INT,
    product_name VARCHAR(255),
    liked_date DATE
);

-- Insert the provided data
INSERT INTO likes (user_id, product_id, product_name, liked_date) VALUES
(1, 1001, 'blog', '2023-08-19'),
(2, 1002, 'youtube', NULL),
(3, 1003, 'education', NULL);

-- Query to retrieve product IDs with 0 likes
SELECT product_id
FROM likes
WHERE liked_date IS NULL;

  
  
  
  
  
  
  
  
  
  