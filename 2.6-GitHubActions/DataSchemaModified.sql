CREATE TABLE users(
user_id SERIAL login VARCHAR(100) password VARCHAR(255)
region VARCHAR(100)
)

ALTER TABLE users
ADD CONSTRAINT users_pk PRIMARY KEY user_id
