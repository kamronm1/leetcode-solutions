# Write your MySQL query statement below
# Leetcode 570
# Problem Link -
# https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50

# Approach - this question involves using subqueries. We're trying to find the name
# of the Manager that has at least 5 direct reports. To start, we don't want to 
# immediately start searching for the name, because we would need to find the manager id
# that has the 5 direct reports first. To start, find the manager ID that has an ID 
# count of at least 5. This is going to be wrapped in a subquery. In this problem,
# the id that we're looking for is 101. That subquery is equivalent to the number 101.
# SO in the end, we set the select name statement equal to values that are found IN
# the subquery using the IN function.


select name from Employee where id IN 
(select managerID from Employee group by managerID
having (count(distinct id)) >= 5)
