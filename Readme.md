# Books, Author, MVC, DAO

## Purpose
This application is to refresh my skills in Data Access Objects implementation using the MVC design pattern. 
* Model represents the data and business logic of the application. 
* View is responsible for presenting the user interface to the user.
* Controller acts as an intermediary between the Model and the View.

## How it works
* The LibraryDAO stores and manages our data of books and authors. LibraryDAO class provides the foundational data management functionality for the application, while other components of the application, such as the Controller and View, use LibraryDAO to interact with and present the data to the user.
* The DAO has a `sharedInstance` class method that provides a shared instance of the LibraryDAO class following the Singleton pattern. It ensures that there is only one instance of LibraryDAO throughout the application's lifetime.
* This shared instance serves as a central point for managing the data, and it can be accessed from different parts of the application to interact with the library's data.
* We can add data with the `addBookWithTitle:author:` ,for instance
* We can retrieve the data with `getAllBooks` and `getAllAuthors`

### Example terminal log
```
2023-09-21 14:59:28.260527-0500 booky[73872:3337008] Hello, World!
2023-09-21 14:59:28.261430-0500 booky[73872:3337008] Book: Sheer force of will, written by Panashe
2023-09-21 14:59:28.261529-0500 booky[73872:3337008] Book: Moonlight on the Bayou, written by Muriro
Program ended with exit code: 0

```