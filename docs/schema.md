# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
first_name      | string    | not null
last_name       | string    | not null

## groups
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
description | text      | not null
key_words   | text[ ]   | not null

## membership
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references user)
group_id    | integer   | not null, foreign key (references group)

## events
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | integer   | not null
group_id    | integer   | not null, foreign key (references group)
description | text      | not null
date        | datetime  | not null

## attending
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references user)
event_id    | integer   | not null, foreign key (references event)
