BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_auth_key" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_user_info" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_user_image" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_google_refresh_token" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_email_reset" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_email_failed_sign_in" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_email_create_request" CASCADE;

--
-- ACTION DROP TABLE
--
DROP TABLE "serverpod_email_auth" CASCADE;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_chat_message" ADD COLUMN "reactions" json;
ALTER TABLE "serverpod_chat_message" ADD COLUMN "reactionsUsers" json;
ALTER TABLE "serverpod_chat_message" ADD COLUMN "replyMessages" json;

--
-- MIGRATION VERSION FOR serverpod_chat
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_chat', '20240909092327727', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240909092327727', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


--
-- MIGRATION VERSION FOR 'serverpod_auth'
--
DELETE FROM "serverpod_migrations"WHERE "module" IN ('serverpod_auth');

COMMIT;
