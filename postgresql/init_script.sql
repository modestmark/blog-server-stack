--create the database, www user which django uses, and give www user all rights
CREATE DATABASE blog;
CREATE USER www WITH PASSWORD 'www';
GRANT ALL PRIVILEGES ON DATABASE blog TO www;
