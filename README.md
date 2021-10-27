# TRACKIT

The project requirements are stated below:

- The project is a mobile web app
- It uses Postgres as a database
- Ruby on Rails was used for the back-end and to create a REST API
- React is used to implement the front-end and redux is used to store the data across the application

## **Built With**

- Ruby on Rails
- PostgreSQL
- Heroku
- POSTMAN

## **Usage Instructions**

### **Structure**

This app is the back-end of the following project: [TRACKIT-FRONTEND](https://github.com/okikiola11/track-it/frontend)

The following diagram represents the relationship of the tables:

### **API ENDPOINTS**

| Endpoint                                 |                          Functionality |
| ---------------------------------------- | -------------------------------------: |
| POST /signup                             |                           Create Users |
| POST /login                    |                           Log In Users |
| POST /loggedin                   |                 Get the current user
| DELETE /logout                 |                   Logout current user out |
| POST /create/measure            |              Create a new count |
| GET /all/measures              |                     Get all user's measures |
| GET /measures/:id    | Get a specific measure |


## [LiveVersion](https://trackit-app-react.herokuapp.com/)

## **Getting Started**

Clone the repository by clicking on "Clone" and copy the given link. In your terminal, go to the folder where you want the project to be and use the following command:

`git clone https://github.com/okikiola11/track-it`

`rails db:create && db:migrate`

## **Starting the Server**

**To start the server run:** <br>
`rails s -p 3001`

## **Testing**

**To check the test run the following command:** <br>
` rails db:migrate RAILS_ENV=test`

`bundle exec rspec`


👤 **Apelehin Okikiola**

* Github: [@okikiola11](https://github.com/okikiola11)
* Twitter: [@Kikiolla3](https://twitter.com/Kikiolla3)
* LinkedIn: [@okikiola-apelehin](https://www.linkedin.com/in/okikiola-apelehin-459008122/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- To Microverse for their `README` template.
