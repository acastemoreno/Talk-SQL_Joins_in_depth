CREATE TABLE IF NOT EXISTS "especies"(
	"id" SERIAL PRIMARY KEY,
	"name" varchar(50)
);

CREATE TABLE IF NOT EXISTS "animales"(
	"id" SERIAL PRIMARY KEY,
	"especie_id" INTEGER REFERENCES "especies"(id),
	"name" varchar(50)
);

INSERT INTO "especies"
("name")
VALUES ('Aves'),
       ('Especie Teorica 1'),
       ('Especie Teorica 2')
;

INSERT INTO "animales"
("especie_id", "name")
VALUES (1, 'Picaflor'),
       (1, 'Paloma'),
       (null, 'Phoenix'),
	   (null, 'Basilisco')
;