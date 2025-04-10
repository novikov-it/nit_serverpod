BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_user_info" ADD COLUMN "extraData" json;

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20250410053206516', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250410053206516', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
