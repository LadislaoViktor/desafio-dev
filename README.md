 The project was built using Ruby on rails 7.14 and Ruby 3.0.7 with a postgres database.
 
 To run the project you'll need docker previously installed and configured.The run:

 <code>docker-compose build</code>

 to create the project.
 After that, run the command below to setup the database:

 <code>docker-compose run --rm web rails db:setup</code>

 To run the rspec tests:

 <code>docker-compose run --rm web rspec</code>


 To use it: 
 1- Open http://0.0.0.0:3000 in your browser;

 2- Choose the .txt file and send it.

 3- If file is valid, you'll be redirected to the dashboard. 

 On the dashboard, you can filter by Store.