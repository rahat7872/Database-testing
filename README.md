# Database-testing Using MySQL

# **Sakila - Database OVERVIEW**
The Sakila sample database was initially developed by Mike Hillyer, a former member of the MySQL AB
documentation team. It is intended to provide a standard schema that can be used for examples in books,
tutorials, articles, samples, and so forth. The Sakila sample database also serves to highlight features of
MySQL such as Views, Stored Procedures, and Triggers.

# **Tables**

The following sections describe the tables that make up the Sakila sample database, in alphabetic order.
-	actor: The actor table lists information for all actors. The actor table is joined to the film table by means of the film_actor table.
-	address: The address table contains address information for customers, staff, and stores. The address table primary key appears as a foreign key in the customer, staff, and store tables.
-	category: The category table lists the categories that can be assigned to a film. The category table is joined to the film table by means of the film_category table.
-	city: The city table contains a list of cities. The city table is referred to by a foreign key in the address table and refers to the country table using a foreign key.
-	country: The country table contains a list of countries. The country table is referred to by a foreign key in the city table.
-	customer: The customer table contains a list of all customers. The customer table is referred to in the payment and rental tables and refers to the address and store tables using foreign keys.
-	film: The film table is a list of all films potentially in stock in the stores. The actual in-stock copies of each film are represented in the inventory table. The film table refers to the language table and is referred to by the film_category, film_actor, and inventory tables.
-	film_actor: The film_actor table is used to support a many-to-many relationship between films and actors. For each actor in a given film, there will be one row in the film_actor table listing the actor and film. The film_actor table refers to the film and actor tables using foreign keys.
-	film_category: The film_category table is used to support a many-to-many relationship between films and categories. For each category applied to a film, there will be one row in the film_category table listing the category and film. The film_category table refers to the film and category tables using foreign keys.
-	film_text: The film_text table contains the film_id, title and description columns of the film table, with the contents of the table kept in synchrony with the film table by means of triggers on film table INSERT, UPDATE and DELETE operations (see Section 5.5, “Triggers”).
-	inventory: The inventory table contains one row for each copy of a given film in a given store. The inventory table refers to the film and store tables using foreign keys and is referred to by the rental table.
-	payment: The payment table records each payment made by a customer, with information such as the amount and the rental being paid for (when applicable). The payment table refers to the customer, rental, and staff tables.
-	rental: The rental table contains one row for each rental of each inventory item with information about who rented what item, when it was rented, and when it was returned. The rental table refers to the inventory, customer, and staff tables and is referred to by the payment table.
-	Staff: The staff table lists all staff members, including information for email address, login information, and picture. The staff table refers to the store and address tables using foreign keys, and is referred to by the rental, payment, and store tables.
-	store: The store table lists all stores in the system. All inventory is assigned to specific stores, and staff and customers are assigned a “home store”. The store table refers to the staff and address tables using foreign keys and is referred to by the staff, customer, and inventory tables.

# **Test Scenarios For Schema testing**
-	Check table presence in Database Schema
-	Check Table name conventions
-	Check number of columns in a table
-	Check column names in a table
-	Check Data types of columns in table
-	Check size of the columns in table
-	Check column keys in a table
-	Check whether the references for foreign keys are valid.
-	Check whether the data type of the primary key and the corresponding foreign keys are the same in the two tables. 


# **Test Scenarios For Stored Procedure testing**
-	Check Stored Procedure exist in database
-	Check stored proedure with valid input data 
-	Check stored procedure handle exceptions when you pass invalid input data.
-	Check stored procedure display results as expected. 
-	Check stored procedure inserting data in proper tables. 
-	Check stored procedure updating data in proper tables.
-	Check stored procedure deleting data from proper tables. 
-	Check calling stored procedure from another stored procedure.

# **Triggers Testing**
Types of triggers
There are Six types of actions or events in the form of triggers: 
-	Before Insert: It is activated before the insertion of data into the table. 
-	After Insert: It is activated after the insertion of data into the table. 
-	Before Update: It is activated before the update of data in the table.
-	After Update: It is activated after the update of the data in the table.
-	Before Delete: It is activated before the data is removed from the table. 
-	After Delete: It is activated after the deletion of data from the table.


