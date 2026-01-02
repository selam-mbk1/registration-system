Registration System

This is a simple student registration system web application built using Jakarta EE and MySQL.
I made this project to practice JSP, Servlets, JDBC, and how to run a web app on Apache Tomcat 10 using IntelliJ IDEA.

The system allows:

Registering students

Viewing registered students from the database

What this project does

A form where a student can be registered (name, email, year)

Data is saved in MySQL database

Another page displays all registered students in a table

Simple and clean user interface using CSS

Technologies I used

Java 19

Jakarta EE 5

JSP & Servlets

MySQL

Apache Tomcat 10.1

IntelliJ IDEA

HTML & CSS

Project structure
registration-system
|
|-src/main/java
|   |-org.example.registrationsystem
|       |-model
|       |   |-Student.java
|       |-dao
|       |   |-StudentDAO.java
|       |-servlet
|           |-RegisterServlet.java
|           |-StudentListServlet.java
|
|-src/main/webapp
|   |-register.jsp
|   |-students.jsp
|   |-style.css
|   |-WEB-INF
|       |-web.xml

Database setup

Create the database and table in MySQL:

CREATE DATABASE registration_db;
USE registration_db;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    year VARCHAR(20)
);
