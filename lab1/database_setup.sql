CREATE DATABASE lab1;
CREATE USER user1 WITH PASSWORD '111';
GRANT ALL ON DATABAE "lab1" TO user1;
CREATE USER user2 WITH PASSWORD '111';
GRANT connect ON DATABASE "lab1" TO user2;