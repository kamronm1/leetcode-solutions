# Write your MySQL query statement below
# Leetcode Question 1378
# Problem Link -
# https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50


# Approach - We're trying to find unique id's and employee names from 2 given tables, Employees, and EmployeeUNI. If an employee does not have a unique id, then the output should just show 'null'. To match columns from both tables, we're going to need to use a join. A left join is sufficient because it will return all records from the first column, with the second column. if there are no records, then the entry will just be 'null'. Join the id column from both tables.


select u.unique_id, e.name from Employees e
left join EmployeeUNI u
    on e.id = u.id;
