/*

Top Cool Votes
--------------------

Find the business and the review_text that received the highest number of  'cool' votes.
Output the business name along with the review text.


yelp_reviews
----------------------
business_name	varchar
review_id	varchar
user_id		varchar
stars		varchar
review_date	datetime
review_text	varchar
funny		int
useful		int
cool		

*/

SELECT
    business_name, review_text
FROM
    yelp_reviews
WHERE cool =(
                select max(cool)
                from yelp_reviews 
            );

/*

output


business_name	review_text
---------------------------------------------
Roka Akor	I hate to admit it, but it had been a long while since my last visit to Roka Akor.
		I deserve a hand slap. But last week, I had the perfect excuse to p

Lunardis	This is the nicest grocery store in the city. I actually met my wife at this grocery 
		store while shopping for avocados.


*/
