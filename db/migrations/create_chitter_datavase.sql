CREATE DATABASE "chitter";
\c chitter
CREATE TABLE users(id SERIAL PRIMARY KEY, name VARCHAR(60), username VARCHAR(60), email VARCHAR(60), password VARCHAR(60));
CREATE TABLE messages(id SERIAL PRIMARY KEY, text VARCHAR(240), users_id INTEGER REFERENCES users (id));

CREATE DATABASE "chitter_test";
CREATE TABLE users(id SERIAL PRIMARY KEY, name VARCHAR(60), username VARCHAR(60), email VARCHAR(60), password VARCHAR(60));
CREATE TABLE messages(id SERIAL PRIMARY KEY, text VARCHAR(240), users_id INTEGER REFERENCES users (id));