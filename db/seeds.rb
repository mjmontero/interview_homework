# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#FactoryGirl.create(:teacher, username: 'teacher')
#FactoryGirl.create(:student, username: 'student')


Homework.create([
	{title: 'Homework 1', question: 'Question 1', due_date: '2017-03-01'},
	{title: 'Homework 2', question: 'Question 2', due_date: '2017-03-30'},
	{title: 'Homework 3', question: 'Question 3', due_date: '2017-03-10'},
	{title: 'Homework 4', question: 'Question 4', due_date: '2017-04-01'},
	{title: 'Homework 5', question: 'Question 5', due_date: '2017-03-15'},
	{title: 'Homework 6', question: 'Question 6', due_date: '2017-04-15'},
	{title: 'Homework 7', question: 'Question 7', due_date: '2017-05-01'},
	{title: 'Homework 8', question: 'Question 8', due_date: '2017-03-25'},
	{title: 'Homework 9', question: 'Question 9', due_date: '2017-04-10'},
	{title: 'Homework 10', question: 'Question 10', due_date: '2017-03-20'},

	])

User.create([
	{username: 'student', role: :student},
	{username: 'teacher', role: :teacher},
	{username: 'mjmontero', role: :student}
	])

user_mj = User.find_by(username: 'mjmontero')
user_student = User.find_by(username: 'student')
hw1 = Homework.find_by(title: 'Homework 1')
hw2 = Homework.find_by(title: 'Homework 2')
hw3 = Homework.find_by(title: 'Homework 3')
hw4 = Homework.find_by(title: 'Homework 4')
hw5 = Homework.find_by(title: 'Homework 5')
hw6 = Homework.find_by(title: 'Homework 6')
hw7 = Homework.find_by(title: 'Homework 7')
hw8 = Homework.find_by(title: 'Homework 8')
hw9 = Homework.find_by(title: 'Homework 9')
hw10 = Homework.find_by(title: 'Homework 10')

StudentHomework.create([
	{student_id: user_mj.id, homework_id: hw1.id},
	{student_id: user_mj.id, homework_id: hw3.id},
	{student_id: user_mj.id, homework_id: hw4.id},
	{student_id: user_mj.id, homework_id: hw5.id},
	{student_id: user_mj.id, homework_id: hw10.id},
	{student_id: user_student.id, homework_id: hw1.id},
	{student_id: user_student.id, homework_id: hw3.id},
	{student_id: user_student.id, homework_id: hw4.id},
	{student_id: user_student.id, homework_id: hw8.id},
	{student_id: user_student.id, homework_id: hw9.id},
	])


Answer.create([
	{student_id: user_mj.id, homework_id: hw1.id, answer: 'mj answer 1 for homework 1', submission_date: DateTime.yesterday},
	{student_id: user_student.id, homework_id: hw1.id, answer: 'student answer 1 for homework 1', submission_date: DateTime.yesterday},
	{student_id: user_mj.id, homework_id: hw1.id, answer: 'mj answer 2 for homework 1', submission_date: DateTime.now},
	{student_id: user_student.id, homework_id: hw1.id, answer: 'student answer 2 for homework 1', submission_date: DateTime.now},

	{student_id: user_mj.id, homework_id: hw3.id, answer: 'mj answer 1 for homework 3', submission_date: Date.yesterday},
	{student_id: user_mj.id, homework_id: hw4.id, answer: 'mj answer 1 for homework 4', submission_date: Date.yesterday},
	{student_id: user_mj.id, homework_id: hw5.id, answer: 'mj answer 1 for homework 5', submission_date: Date.yesterday},
	{student_id: user_mj.id, homework_id: hw10.id, answer: 'mj answer 1 for homework 10', submission_date: Date.yesterday},

	{student_id: user_student.id, homework_id: hw3.id, answer: 'mj answer 1 for homework 3', submission_date: Date.yesterday},
	{student_id: user_student.id, homework_id: hw4.id, answer: 'mj answer 1 for homework 4', submission_date: Date.yesterday},
	{student_id: user_student.id, homework_id: hw8.id, answer: 'mj answer 1 for homework 8', submission_date: Date.yesterday},
	{student_id: user_student.id, homework_id: hw9.id, answer: 'mj answer 1 for homework 9', submission_date: Date.yesterday},

	{student_id: user_student.id, homework_id: hw4.id, answer: 'student answer 2 for homework 4', submission_date: DateTime.now},
	{student_id: user_mj.id, homework_id: hw4.id, answer: 'mj answer 2 for homework 4', submission_date: DateTime.now},


	])