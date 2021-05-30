/*

Posting Rate

Write a query to get the post success rate by date.Assume that the first action for all postings is 'enter'
followed by either 'post' (if posting is successful) or 'cancel' (if posting is not successful).

b_post_events
------------------------
user_id		int
created_at	datetime
event_name	varchar

*/



with cte_enter AS
(
    SELECT *
    FROM fb_post_events
    WHERE event_name = 'enter'
),
cte_post AS 
(
    SELECT *
    FROM fb_post_events
    WHERE event_name = 'post'
)


SELECT cte_enter.created_at, (count(cte_post.event_name))::float*100/count(cte_enter.event_name) as post_success_rate
FROM cte_enter
LEFT JOIN cte_post
ON cte_enter.user_id = cte_post.user_id
GROUP BY cte_enter.created_at


/*
output

created_at	post_success_rate
----------------------------------
2020-08-25	100
2020-08-30	40
2020-08-27	0
2020-08-26	0
2020-08-28	0
2020-08-29	100
2020-08-24	100
