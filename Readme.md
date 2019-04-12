#Task

## How to run

1. `git clone repo_url`
2. cd task
3. `npm install`
4. Import sql file from server/database_schema to your database.
5. Change the file server/config/config.js according to your database.
6. `npm run start` to start the server.

## Routes to Hit

http://localhost:5000

1. `/student/name/:id` to get data from student table.
   For e.g. : http://localhost:5000/student/name/1

1. `/student/class/:id` to get data from student_class table.
   For e.g. : http://localhost:5000/student/class/1

1. `/student/reports/:id` to insert data into student_reports table.
   For e.g. : http://localhost:5000/student/reports/1
