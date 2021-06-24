/*

Find matching hosts and guests in a way that they are both of the same gender and nationality
--------------------------------------------------------------------------------------------------

Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.


Tables: airbnb_hosts, airbnb_guests

airbnb_hosts
------------------
host_id		int
nationality	varchar
gender		varchar
age		int

airbnb_guests
-------------------
guest_id	int
nationality	varchar
gender		varchar
age		int

*/

/* approach 

- combined two table on nationality and gender columns by inner join
*/


SELECT hosts.host_id, guests.guest_id
FROM airbnb_hosts hosts
INNER JOIN airbnb_guests guests
ON (hosts.nationality = guests.nationality) 
    AND (hosts.gender = guests.gender);
