BEGIN;

--
-- ACTION ALTER TABLE
--
DROP INDEX "serverpod_phone_auth_email";
CREATE INDEX "serverpod_phone_auth_phone" ON "serverpod_phone_auth" USING btree ("phoneNumber");

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20241011003212644', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241011003212644', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
