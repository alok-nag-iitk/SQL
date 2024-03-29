/*Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

Note: input will never be an empty string


 # write your SQL statement here: you are given a table 'fakebin' with column 'x', return a table with column 'x' and your result in a column named 'res'.
*/


select
  x, 
  translate(x, '0123456789','0000011111' ) as res
from fakebin;

-- output
--------------------------------------------------------------
x								                    res
--------------------------------------------------------------
45385593107843568				        01011110001100111
509321967506747					         101000111101101
366058562030849490134388085		011011110000101010000011011
15889923						               01111100
800857237867					            100111001111
40109476778684463834926203		 00001011111110010100101000
16456854282787791				        01011110010111110
933273							                100010
78624							                 11100
