# Write your MySQL query statement below
# Leetcode 1934
# Problem Link -
# https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50

# Approach - Approach (Plain & Simple)

#Start with all users from Signups using a LEFT JOIN to include everyone.

#Convert actions to numbers: 1 if confirmed, 0 otherwise.

#Take the average of these numbers — this gives confirmed / total automatically.

#Handle users with no actions by wrapping in COALESCE(..., 0).

#Round if needed for a clean decimal output.

select Signups.user_id, coalesce(round(avg(case when action = 'confirmed' then 1 else 0 end), 2), 0) as confirmation_rate
from Signups left join Confirmations on Signups.user_id = Confirmations.user_id
group by user_id
