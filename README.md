# MI-AFP Homework Elm #02

*Homework to practice The Elm Architecture.*

Your goal is to create a simple application for managing a "database" of books. You have server and views prepared; your task is to implement the application's business logic.

## Server

The server is implemented in the [Express](https://expressjs.com) framework. It stores the data in memory only. You can run the server after you install the dependencies:

```
$ npm install
$ npm start
```

The server will be running on the port `3000` and has the following API.

**Getting the list of books**
```
> GET /books

< 200 OK
[
    {
        "id": 1,
        "name": "The Catcher in the Rye"
    },
    {
        "id": 2,
        "name": "Of Mice and Men"
    }
]
```

**Getting the book detail**
```
> GET /books/:id

< 200 OK
{
    "id": 2,
    "name": "Of Mice and Men",
    "description": "**Of Mice and Men** is a ..."
}
```

**Creating a new book**
```
> POST /books
{
	"name": "Of Mice and Men",
	"description": "**Of Mice and Men** is a ..."
}

< 201 Created

```

**Deleting a book**
```
> DELETE /books/:id

< 204 No Content
```

At the beginning of the server code in `server/main.js`, there is a definition of the `error` property. You can change it to `true` if you want to simulate server responding with an error so you can implement error state handling in your application.

```javascript
const error = true
```

## Assignment

You have an application boilerplate prepared in `src/Main.elm`. There are some views with styles from `src/Styles.elm` so you don't have to bother with the look. Use `elm reactor` to open the application in the browser. It consists of 3 components: **Book List**, **Book Detail** and **Book Form**. You should implement the following functionality for each component:

**Book List**
- should load a list of books from the server when the application is started and show the name of each book,
  - make sure to handle error state as well
- when a user clicks on a book, it should open detail in the Book Detail component
- should reload the list every time a book is deleted or added
- Books should be sorted alphabetically

**Book Detail**
- should load and display a book title and description
  - the description should render Markdown, find the appropriate library at [packages.elm-lang.org](https://package.elm-lang.org)
  - make sure to handle error state as well
- contains delete button that should delete current book using the server's API
- should somehow display empty state when no book is selected (after the application is started or the selected book was deleted)

**Book Form**
- user should be able to fill in Book Title and Book Description
- when submitted, it should create a new book using the server's API
  - can be submitted if both fields are filled only
  - should be cleared after it is submitted
  - make sure to handle error response from the server
  - make sure the form cannot be submitted multiple times (e.g., by disabling the submit button while it is loading)


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for more details.
