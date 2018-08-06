### Installation



### Usage




### Problem Statement

We have some customer records in a text file (customers.txt) -- one customer per line, JSON lines formatted. We want to invite any customer within 100km of our Dublin office for some food and drinks on us. Write a program that will read the full list of customers and output the names and user ids of matching customers (within 100km), sorted by User ID (ascending).

 - You can use the first formula from this Wikipedia article to calculate distance. Don't forget, you'll need to convert degrees to radians.
 - The GPS coordinates for our Dublin office are `53.339428, -6.257664`.
 - You can find the Customer list [here](https://s3.amazonaws.com/intercom-take-home-test/customers.txt).


 We're looking for you to produce working code, with enough room to demonstrate how to structure components in a small program.



- Poor answers will be in the form of one big function. It’s impossible to test anything smaller than the entire operation of the program, including reading from the input file. Errors are caught and ignored.

- Good answers are well composed. Calculating distances and reading from a file are separate concerns. Classes or functions have clearly defined responsibilities. Test cases cover likely problems with input data.

- It’s an excellent answer if we've learned something from reading the code.



We recommend you use whatever language you feel strongest in. It doesn't have to be one we use!



**Please submit code as if you intended to ship it to production.** The details matter. Tests are expected, as is well written, simple idiomatic code.


### TODO

 - Take coordinates from the command line
 
 - Make a 1-click install process
