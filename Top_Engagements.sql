/*

Top Engagements
---------------------
We have two tables that contain search results. The 'fb_search_results' table contains the search  
results from a user's search. In this table the `result_id` column is a key that corresponds to the
`search_id` column of the `fb_search_events` table. The `position` column refers to the position that 
the result was displayed to the user. The 'fb_search_events' is a table that stores whether or not the 
user clicked on a particular search result.


Write a query to calculate the percentage of search results, out of all the results, that were positioned
 in the top 3 and clicked by the user.


fb_search_results
---------------------
query		varchar
result_id	int
position	int
notes		varchar


fb_search_events
----------------------
search_id	int
query		varchar
has_clicked	varchar
    

/*
Approach
------------

-- join fb_search_events to fb_search_results with left join
-- identify rows with top 3 position and that have been clicked
-- find the percentage of total rows that satify above conditon 

*/


select
    100.0 * SUM(CASE WHEN position <= 3 AND has_clicked = 'yes' THEN 1 END) / COUNT(*) AS engage_percent
    
FROM fb_search_results res
LEFT JOIN fb_search_events eve
ON res.result_id = eve.search_id;


/*

output

engage_percent
----------------
16.667