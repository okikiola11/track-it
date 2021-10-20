# TRACKIT

The project requirements are stated below:

- The project is a mobile web app
- The database has 2 tables (Measures and Measurements)
- It uses Postgres as a database
- Ruby on Rails was used for the back-end and to create a REST API
- React is used to implement the front-end and redux is used to store the data across the application
- 2 nice-to-have requirements are implemented: user authentication from the front-end to the server and a panel to create / update / delete things to measure;

## **Built With**

- Ruby on Rails
- JWT
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
| POST /authentication                     |                           Log In Users |
| GET /api/v1/measurements                 |                   Get all Measurements |
| GET /api/v1/measurements/:id             |              Get Specific Measurements |
| DELETE /api/v1/measurements              |                     Remove Measurement |
| GET /api/v1/measurements/:id/measures    | Get Measures of a Specific Measurement |
| POST /api/v1/measurements/:id/measures   |             Add Measure to Measurement |
| DELETE /api/v1/measurements/:id/measures |                     Remove Measurement |


## [LiveVersion]()

## **Getting Started**

Clone the repository by clicking on "Clone or Download" and copy the given link. In your terminal, go to the folder where you want the project to be and use the following command:

`git clone https://github.com/okikiola11/track-it`

`rails db:create && db:migrate && db:seed`

## **Starting the Server**

**To start the server run:** <br>
`rails s -p 3001`

## **Testing**

**To check the test run the following command:** <br>
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

