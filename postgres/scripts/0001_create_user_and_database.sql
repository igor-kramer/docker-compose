create database mydb;
create user myuser with encrypted password 'mypass';
grant all privileges on database mydb to myuser;

use mydb;