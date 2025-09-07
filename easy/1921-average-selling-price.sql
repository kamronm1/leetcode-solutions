# Write your MySQL query statement below
# Leetcode 1251
# Problem Link -
# https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

# Approach

select p.product_id, round(sum(u.units * p.price)/sum(u.units), 2) as average_price
from Prices p left join UnitsSold u on p.product_id = u.product_id and u.purchase_date between p.start_date and p.end_date
group by p.product_id
