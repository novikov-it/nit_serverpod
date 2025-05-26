BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_phone_auth" ADD COLUMN "userExtraData" json;

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20250523053137568', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250523053137568', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
