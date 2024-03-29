/*
Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.

Examples (input -> output)
6, "I"     -> "IIIIII"
5, "Hello" -> "HelloHelloHelloHelloHello"
*/

--# write your SQL statement here: you are given a table 'repeatstr' with columns 'n' and 's', return a table with all columns and your result in a column named 'res'.


select
  s, n, repeat(s,n) as res
from repeatstr;


/*
Output
------------------------------
s	                n	      res
------------------------------
*	                3	      ***
#	                5      	#####
ha	              2	      ha ha
uzhHiylZOw	      9	      uzhHiylZOwuzhHiylZOwuzhHiylZOwuzhHiylZOwuzhHiylZOwuzhHiylZOwuzhHiylZOwuzhHiylZOwuzhHiylZOw
dIOLWZ	          13	    dIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZdIOLWZ
]fTI            	15	    fTIfTIfTIfTIfTIfTIfTIfTIfTIfTIfTIfTIfTIfTIfTI
eKhp	            11	    eKhpeKhpeKhpeKhpeKhpeKhpeKhpeKhpeKhpeKhpeKhp
Tquku	            21	    TqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTqukuTquku
Fo	              20	    FoFoFoFoFoFoFoFoFoFoFoFoFoFoFoFoFoFoFoFo
oscnosssmpdzZLBOf	13	    oscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOfoscnosssmpdzZLBOf
mK spuwxEKklI	    13	    mK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklImK spuwxEKklI

*/
