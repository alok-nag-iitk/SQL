/*

Top Search Results


You're given a table that contains search results. If the 'position' column represents the position of the search results, write a query to calculate the percentage of search results that were in the top 3 position.


fb_search_results
--------------------------
query		varchar
result_id	int
position	int
notes		varchar

*/


WITH CTE AS(
SELECT
    CASE
        WHEN position <= 3 THEN 1
        ELSE 0
    END AS is_top_3
FROM fb_search_results
)

SELECT 100.0*SUM(is_top_3)/COUNT(*) AS top_3_percentage
FROM CTE;


/*

output

top_3_percentage
-----------------
41.667