# README

This README will provide you with the necessary steps to get up and running with this project.

### Ruby version --> `2.6.3`

#

### Rails version --> `6.0.3.3`

#

### API Documentation --> [Billalble hours](https://documenter.getpostman.com/view/3763588/TVKBXd81)

#

### Configuration<br>

To begin working on this repo, first either clone or download the repo by running:<br>
`git clone https://github.com/aapetsi/invoice_generator.git` && `cd invoice_generator`<br>
This downloads the repository onto your local machine and changes directory to the application folder.<br>

Once this is complete, you will need to install all the required dependencies used in the project. Execute the following code:<br>
`bundle install`

To run the server application, run the following code:<br>
`rails s`

You can optionally add `-p` to specify the port on which the server should run. eg:<br>
`rails s -p 5000`

#

### Database initialization and creation <br>

This project was created using the `PostgreSQL` database.<br>
Make sure your database server is running

- Creating the database migrations
  Run the following code
  `rails db:migrate`. This creates the database tables based on the schema definition

- Adding seed data
  Execute the following code
  `rails db:seed`. This populates the database with sample data for you to begin working with

#

### How to run the test suite <br>

From the root of the application run:<br>
`bundle exec rspec`

#
