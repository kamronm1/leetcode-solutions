# Write your MySQL query statement below
# Leetcode 1075
# Problem link
# https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

# Approach - One big mistake that I always made was trying to divide all the values in the column by the count of the values in that column

select p.project_id, avg(e.experience_years) as average_years from Project p
left join Employee e
on p.employee_id = e.employee_id
group by p.project_id
