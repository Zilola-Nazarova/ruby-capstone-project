# Hello and welcome to "Catalog of my things" app

## This project was created collaboratively by

### In this project, we created "Catalog of my things" app. It is a simple console app that allows users to manage collections of the things they own: books, music albums, and games. Everything is based on the UML class provided in requirements. The data is be stored in JSON files. We also prepared a database with tables structure analogical the program's class structure.

### General requirements
- there are no linter errors
- correct Gitflow is used
- work is documented in a professional way

### Project requirements
**Logic**
- Each class from the UML class diagram is in a separate .rb file
- All associations (1-to-many relationships) and aggregations (parent-child relationships) between classes are implemented
- All properties visible in the diagram are defined and set up in the constructor method
- All methods visible in the diagram are implemented
- We added unit tests for all implemented methods (and all test cases pass)

**User interface**
`main.rb` file serves as our console app entry-point
The console app, at the start:
- Presents the user with a list of options to perform
- Lets users choose an option
- If needed, asks for parameters for the option
- Has a way to quit the app

The following options are available:
- List all books
- List all music albums
- List of games
- List all genres
- List all labels
- List all authors
- Add a book
- Add a music album
- Add a game

All data is preserved by saving collections in .json files.

**Database**
- We created a schema.sql file with tables that are analogical to the structure of the classes
- We added all properties and associations from the parent Item class as table columns to all tables based on the child classes
- 1-to-many relationships are implemented using foreign keys

A description of the project.
A demo of the project features.
You should also highlight some interesting piece of code or something you built that you are very proud of.
