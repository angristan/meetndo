CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "picture" blob,
  "name" varchar,
  "firstname" varchar,
  "username" varchar,
  "gender" int,
  "date_of_birth" date,
  "email" varchar,
  "password" varchar,
  "location" string,
  "privacy" binary
);

CREATE TABLE "meetings" (
  "id" SERIAL PRIMARY KEY,
  "picture" blob,
  "name" varchar,
  "type" int,
  "description" varchar,
  "location" string,
  "datetime" datetime,
  "duration" int,
  "price" decimal,
  "max_part" int,
  "chatroom" int,
  "archived" boolean
);

CREATE TABLE "users_meetings" (
  "user" int,
  "meeting" int,
  "relation" int
);

CREATE TABLE "relations" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "types" (
  "id" SERIAL PRIMARY KEY,
  "parent" int,
  "name" varchar
);

CREATE TABLE "chatrooms" (
  "id" SERIAL PRIMARY KEY,
  "groupchat" boolean
);

CREATE TABLE "messages" (
  "id" SERIAL PRIMARY KEY,
  "content" varchar,
  "datetime" datetime,
  "sender" int,
  "chatroom" int
);

CREATE TABLE "users_chatrooms" (
  "user" int,
  "chatroom" int,
  "admin" boolean
);

ALTER TABLE "chatrooms" ADD FOREIGN KEY ("id") REFERENCES "meetings" ("chatroom");

ALTER TABLE "users_meetings" ADD FOREIGN KEY ("user") REFERENCES "users" ("id");

ALTER TABLE "users_meetings" ADD FOREIGN KEY ("meeting") REFERENCES "meetings" ("id");

ALTER TABLE "users_meetings" ADD FOREIGN KEY ("relation") REFERENCES "relations" ("id");

ALTER TABLE "meetings" ADD FOREIGN KEY ("type") REFERENCES "types" ("id");

ALTER TABLE "types" ADD FOREIGN KEY ("parent") REFERENCES "types" ("id");

ALTER TABLE "messages" ADD FOREIGN KEY ("sender") REFERENCES "users" ("id");

ALTER TABLE "messages" ADD FOREIGN KEY ("chatroom") REFERENCES "chatrooms" ("id");

ALTER TABLE "users_chatrooms" ADD FOREIGN KEY ("user") REFERENCES "users" ("id");

ALTER TABLE "users_chatrooms" ADD FOREIGN KEY ("chatroom") REFERENCES "chatrooms" ("id");
