/*

Popularity Percentage
-------------------------
Find the popularity percentage for each user on Facebook. The popularity percentage is defined 
as the total number of friends the user has divided by the total number of users on the platform, 
then converted into a percentage by multiplying by 100.
Output each user along with their popularity percentage. 
Order records in ascending order by user id.


The 'user1' and 'user2' column are pairs of friends. ( the opposite order of users is not repeated)


Table: facebook_friends
----------------------------
user1		int
user2		int


*/


with cte_users as
(select user1 from facebook_friends
UNION ALL
select user2 from facebook_friends
)

select 
    user1, 
    100.0 * COUNT(*) / (SELECT COUNT(distinct user1) from cte_users) as popularity_percent
    
FROM cte_users
GROUP BY 1
order by user1


