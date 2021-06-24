/*

Find the top 10 ranked songs in 2010
--------------------------------------------------
What were the top 10 ranked songs in 2010? 
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order.

Table: billboard_top_100_year_end
-------------------------------------
year			int
year_rank		int
group_name		varchar
artist			varchar
song_name		varchar
id			int

*/


/* Approach
- Filter all songs from year 2010
- choose distinct rank, group_name and song_name
- select ranked 1 to 10
*/

SELECT DISTINCT year_rank, group_name, song_name
FROM billboard_top_100_year_end
WHERE year = 2010
ORDER BY year_rank ASC
limit 10;
