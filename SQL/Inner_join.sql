SELECT *
FROM "especies" AS "es"
JOIN "animales" AS "an" ON "an".especie_id = "es".id;