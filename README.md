# Edmodo Interview Homework

This repository contains a bare-bone application including basic authentication.

# To Run the application

Make sure you have Ruby (2.2 or above) and Bundler installed.

To set up the database, run

```console```
bundle install
rake db:reset
rake db:seed
```

This will set up the database and it also create 3 users: 'teacher', 'student' and 'mjmontero'

student will have assigned homeworks 1,3,4,8,9
mjmontero will have assigned homeworks 1,3,4,5,10
homeworks 1,3,5 are already expired

Teachers have access to all homeworks, they can view latest submissions and submission versions

The application is using bootstrap Gentelella Alela! free admin template to create a simple UI

To start the web server, run

```console```
bundle exec rails server
```

# To Run RSpecs

rspec spec

Open your web browser and go to http://localhost:3000

You can log in as a teacher by using 'teacher' as the username and log in as a student by using 'student' as the username.

# Mocks
Feel free to design your UI

![alt tag](https://raw.githubusercontent.com/edmodo/interview_homework/master/mocks/3%20list%20homework.png)
![alt tag](https://github.com/edmodo/interview_homework/blob/master/mocks/4%20submission.png)
![alt tag](https://github.com/edmodo/interview_homework/blob/master/mocks/5%20submissions.png)
![alt tag](https://github.com/edmodo/interview_homework/blob/master/mocks/6%20all_submissions.png)

Good Luck!
