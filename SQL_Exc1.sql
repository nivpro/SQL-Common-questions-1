#1.
#Querying for a specific string in one table:

SELECT [col1, col2]
FROM [Table]
WHERE
[colX] LIKE '%[char]%'
OR [colY] LIKE '%[string]%'


#2.
#Manipulating strings and date functions

SELECT
CONCAT(MONTHNAME([date_col]), ' ' ,YEAR([date_col])) AS month,
COUNT([col]) AS col_count,
AVG(DATEDIFF([later_date], [early_date])) AS avg_between_dates
FROM
[Table]
GROUP BY [col]


#3.
#Having

SELECT [col]
FROM
[Table]
GROUP BY [col]
HAVING MAX([col])
ORDER BY [col] DESC
LIMIT 0 , 1


#4.
aggregate function

SELECT
film_id, store_id, COUNT(inventory_id) AS num_of_copies
FROM
inventory
GROUP BY film_id , store_id
ORDER BY num_of_copies DESC , film_id , store_id
