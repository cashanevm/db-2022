CREATE TABLE "cloth" (
                         "id" SERIAL PRIMARY KEY,
                         "full_name" varchar,
                         "created_at" timestamp,
                         "color" int,
                         "brand" int,
                         "size" int,
                         "is_sold" boolean,
                         "price" int
);

CREATE TABLE "brand" (
                         "id" int PRIMARY KEY,
                         "name" varchar
);

CREATE TABLE "size" (
                        "id" int PRIMARY KEY,
                        "name" varchar,
                        "size" int
);

CREATE TABLE "distributor" (
                               "id" int PRIMARY KEY,
                               "name" varchar,
                               "brand" int
);

CREATE TABLE "color" (
                         "id" int PRIMARY KEY,
                         "name" varchar,
                         "red" int,
                         "green" int,
                         "blue" int,
                         "transparency" int
);

ALTER TABLE "cloth" ADD FOREIGN KEY ("color") REFERENCES "color" ("id");

ALTER TABLE "cloth" ADD FOREIGN KEY ("brand") REFERENCES "brand" ("id");

ALTER TABLE "cloth" ADD FOREIGN KEY ("size") REFERENCES "size" ("id");

ALTER TABLE "distributor" ADD FOREIGN KEY ("brand") REFERENCES "brand" ("id");