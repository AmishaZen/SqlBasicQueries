# SqlBasicQueries
Some basic Sql operations on Product table problem statement.

## Problem Statement 

## Creation of Table with constraints
# 1.	Create a table Product as per the following specifications.
      Attribute	      DataType  	  Size	      Allow Null	      Condition
      ProductID 	      Auto Increment		            No	          Primary Key
      Description	      String	         30	            No	          UNIQUE , NON-CLUSTERED INDEX
      SetQty	      Integer		                    No	          Either 1, 5 or 10
                                                                             (Default value 1)
      Rate	            e.g.  100.25	Precision           Yes	          Range (51 – 5000)
                                           10 and 
                                           scale 2	


# 2.	Insert 20 records in the above Product table

# 3.	Update all the rates with 10% rate hike.

# 4.	Delete last record by providing the ProductID.

# 5.	Alter the above table and add the following column.
      Attribute	DataType	Size	AllowNull	      Condition
      MarginCode	Char	        1	      Yes	      A or B or Null
# 6.	Update few records to set MarginCode to A and some records MarginCode to B

# 7.	Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.
