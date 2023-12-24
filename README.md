** this project is a Library Management System that has been created in Java language with a connection of a database MySQL

   things you have to consider
=================================
>> Library Management System written in java This is a shared librabry management system.
>> Its exact purpose is to be used in an actual library, in which in order to borrow a book, you should give books to the library to be borrowed by other users. It is in early development phase.

carefully do the following to use the project
>> Clone the repository  
>> open it with netbeans IDEA

we will have built this project by:
***********************************
adding new books
adding books categories
adding books Author
adding books Publisher
adding day to day operations for rent or retrieving books
Generate Excel reports from our data
Adding new users with user login and editing user data

the functionality of the library class includes
Add user: The librarian will enter the details such as username, password, user type of the user and user will be added.
Add books: The librarian will enter the details of the new book such as  book name, book publisher, price, pages, edition, etc. The details will be entered into the database and the book will be added.
Issue book: The librarian will enter the details of the issue book of the user such as book id, user id, date at which book was issued, etc. The details will be entered into the database and the book will be issued.
Return book: The librarian will enter the details of the return book of the user such as book id, user id, date at which book was returned, fine(if any), etc. The details will be entered into the java library management system.

Users can check which books are available in library, they can also check their issued books and returned books
connection method as a reusable component, this method will connect the library management to mysql database. Make sure that you enter the proper url string of database connection such as port number, username, password, etc.
Function definitions:

forName(driverClassName): This function is used to register with the driver of the database.

getConnection(url): This function is used to make connections with databases. It takes parameters such as hostname, port number, database, username, password, etc. Generalized form:

“jdbc:mysql://hostname:port/dbName”, “username”, “password”. If your mysql does not have a password then enter “” as an empty string
