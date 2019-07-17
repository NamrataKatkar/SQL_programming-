Q.1 Write SQL query to convert the input column to desired output.

Input : table name : "Demo"
--------
Gender  |
--------
F
F
F
M
F
M
M
M
F
M
M
F
M
F

Desired output:
--------
Gender  |
--------
F
M
F
M
F
M
F
M
F
M
F
M
F
M

Answer:
select gender, row_number() over(partition by gender) as rn from Demo order by rn 
