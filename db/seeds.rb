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

StudentHomework.create([
	{student_id: User.find_by(username: 'mjmontero').id, homework_id: Homework.find_by(title: 'Homework 1').id},
	{student_id: User.find_by(username: 'mjmontero').id, homework_id: Homework.find_by(title: 'Homework 3').id},
	{student_id: User.find_by(username: 'mjmontero').id, homework_id: Homework.find_by(title: 'Homework 4').id},
	{student_id: User.find_by(username: 'mjmontero').id, homework_id: Homework.find_by(title: 'Homework 5').id},
	{student_id: User.find_by(username: 'mjmontero').id, homework_id: Homework.find_by(title: 'Homework 10').id},
	{student_id: User.find_by(username: 'student').id, homework_id: Homework.find_by(title: 'Homework 1').id},
	{student_id: User.find_by(username: 'student').id, homework_id: Homework.find_by(title: 'Homework 3').id},
	{student_id: User.find_by(username: 'student').id, homework_id: Homework.find_by(title: 'Homework 4').id},
	{student_id: User.find_by(username: 'student').id, homework_id: Homework.find_by(title: 'Homework 8').id},
	{student_id: User.find_by(username: 'student').id, homework_id: Homework.find_by(title: 'Homework 9').id},
	])
