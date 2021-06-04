/*

Most Active Users On Messenger

Facebook Messenger stores the number of messages between users in a table named 'fb_messages'.
In this table 'user1' is the sender, 'user2' is the receiver, and 'msg_count' is the number of
messages exchanged between them.Find the top 10 most active users on Facebook Messenger by counting
their total number of messages sent and received.


fb_messages
-------------------------
id		int
date		datetime
user1		varchar
user2		varchar
msg_count	int


/*
Approach

-- create two CTEs. One has user names and  messages sent by them, other iwth     user names and messages received by them.
-- union those two tables to form one table
-- Add the number of messages sent and received by each user using GROUP BY clause.
-- Order by descending number of messages count 
-- Select top 10 users using LIMIT
*/



WITH cte_messages AS
(SELECT user1, msg_count
 FROM fb_messages
 
 union all
 
 SELECT user2, msg_count
 FROM fb_messages)
 
 SELECT user1, sum(msg_count) 
 FROM cte_messages
 GROUP BY user1
 ORDER BY 2 DESC
 LIMIT 10;


/*

Output


user		total_messages_count
----------------------------------
tanya26		57
johnmccann	47
craig23		43
herringcarlos	37
wangdenise	36
trobinson	35
lindsey38	31
lfisher		29
jennifer11	28
ucrawford	26

*/