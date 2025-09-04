# Write your MySQL query statement below
# Leetcode 620
# Problem Clock - 
# https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50

# Approach - THe task is to find movies that are odd, and that don't have 
# a description of 'boring'. select id, movie, description, and rating from the table
# use modulus division to find numbers that are not even % 2 != 0, and filter by
# movies that don't have the boring description.

select id, movie, description, rating from Cinema
where id % 2 != 0 and description != 'boring'
order by id desc;
