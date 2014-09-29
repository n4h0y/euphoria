RECOMMENDED DEV TOOLS:
-Eclipse Juna
-Maven
-MySQL 

SETUP:

-create database in mysql

CREATE DATABASE euphoria

-create a user for mysql

CREATE USER 'server'@'localhost' IDENTIFIED BY 'serverpwd';

-grant access to the database

GRANT ALL PRIVILEGES ON * . * TO 'server'@'localhost';

ECLIPSE SETUP: 
-import the pom.xml file
-run using maven with a goal tomcat7:run


