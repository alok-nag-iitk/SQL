/*

Acceptance Rate By Date


What is the overall friend acceptance rate by date? Your output should have the rate of acceptances by the date the request was sent. Order by the earliest date to latest.
Assume that each friend request starts by a user sending (i.e., user_id_sender) a friend request to another user (i.e., user_id_receiver) that's logged in the table with action = 'sent'.
If the request is accepted, the table logs action = 'accepted'. If the request is not accepted, no record of action = 'accepted' is logged.


fb_friend_requests
----------------------------------
user_id_sender		varchar
user_id_receiver	varchar
date			datetime
action			varchar


*/


SELECT 
    sent.date,
    (COUNT(accepted.action)::float)/COUNT(sent.action) as acceptance_rate 

FROM(
    SELECT *
    FROM fb_friend_requests
    WHERE action = 'sent'
    )sent
    
LEFT JOIN( 
    SELECT *
    FROM fb_friend_requests
    WHERE action = 'accepted'
    ) accepted
    
ON  sent.user_id_sender = accepted.user_id_sender
AND sent.user_id_receiver = accepted.user_id_receiver

GROUP BY sent.date
ORDER BY sent.date


/*

Output
--------------------------------
date		acceptance_rate
--------------------------------
2020-01-04	0.75
2020-01-06	0.667
