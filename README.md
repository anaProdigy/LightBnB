# LightBnB

## Project Summary

LightBNB is an Lighthouse Labs AirBNB clone. It is built using SASS, JS, Express, and PostgreSQL. Users can view properties, rent properties, add properties and review properties. They can also search properties by price, location or rating.

![](LightBnB.gif)


## Getting Started

### 1. Fork(optional) and clone this repository onto your local device.
### 2. Set up database
#### - Connect to your database in psql. `psql -d lightbnb`
#### - Import migrations queries to create the tables `\i migrations/01_schema.sql`
#### - Run or import seeds quieries to populate tables `\i migrations/01_seeds.sql`, `\i migrations/02_seeds.sql`
#### - test one of the queries from the queries folder to make shure db set up properly
`SELECT id, name, email, password
FROM users
WHERE email = 'tristanjacobs@gmail.com';`
### 3.  In LightBnB_WebApp-master folder install dependencies with `npm install`.

#### Dependencies
    "bcryptjs": "^2.4.3",
    "body-parser": "^1.19.0",
    "cookie-session": "^1.4.0",
    "express": "^4.17.1",
    "nodemon": "^1.19.4",
    "pg": "^8.7.1"

### 4. Start the web server using the `npm run local` command. The app will be served at <http://localhost:3000/>.
### 5. Go to <http://localhost:3000/> in your browser.
### 6. Login
```sh 
Email: "tristanjacobs@gmail.com"
Password: "password"

```

## Project Structure

```
.
├── db
│   ├── json
│   └── database.js
├── public
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── libraries
│   │   ├── index.js
│   │   ├── network.js
│   │   └── views_manager.js
│   ├── styles
│   │   ├── main.css
│   │   └── main.css.map
│   └── index.html
├── routes
│   ├── apiRoutes.js
│   └── userRoutes.js
├── styles  
│   ├── _forms.scss
│   ├── _header.scss
│   ├── _property-listings.scss
│   └── main.scss
├── .gitignore
├── package-lock.json
├── package.json
├── README.md
└── server.js
```

* `db` contains all the database interaction code.
  * `json` is a directory that contains a bunch of dummy data in `.json` files.
  * `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.
* `public` contains all of the HTML, CSS, and client side JavaScript. 
  * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
  * `javascript` contains all of the client side javascript files.
    * `index.js` starts up the application by rendering the listings.
    * `network.js` manages all ajax requests to the server.
    * `views_manager.js` manages which components appear on screen.
    * `components` contains all of the individual html components. They are all created using jQuery.
* `routes` contains the router files which are responsible for any HTTP requests to `/users/something` or `/api/something`. 
* `styles` contains all of the sass files. 
* `server.js` is the entry point to the application. This connects the routes to the database.

