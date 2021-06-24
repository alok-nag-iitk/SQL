/*

Top Ranked Songs
-------------------

Find songs that have ranked in the top position. Output the track name and the 
number of times it ranked at the top. Sort your records by the number of times 
the song was in the top position in descending order.


Table: spotify_worldwide_daily_song_ranking
----------------------------------------------
id		int
position	int
trackname	varchar
artist		varchar
streams		int
url		varchar
date		datetime
region		varchar

*/



select trackname, COUNT(*) AS times_top
from spotify_worldwide_daily_song_ranking
where position = 1
group by trackname
order by times_top DESC;