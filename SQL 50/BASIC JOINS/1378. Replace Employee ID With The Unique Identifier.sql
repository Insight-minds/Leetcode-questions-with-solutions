# Write your MySQL query statement below
SELECT euni.unique_id, e.name FROM Employees as e LEFT JOIN EmployeeUNI as euni ON e.id = euni.id

"""
Combining two tables using the left join on the condition that both the ids are same.
"""
