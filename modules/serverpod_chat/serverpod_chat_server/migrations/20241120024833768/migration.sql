BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_chat_message" ADD COLUMN "senderName" text;
--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_phone_auth" (
    "id" bigserial PRIMARY KEY,
    "phoneNumber" text NOT NULL,
    "hash" text NOT NULL,
    "expirationTime" timestamp without time zone NOT NULL,
    "isUsed" boolean NOT NULL DEFAULT false
);

-- Indexes
CREATE INDEX "serverpod_phone_auth_phone" ON "serverpod_phone_auth" USING btree ("phoneNumber");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_phone_failed_sign_in" (
    "id" bigserial PRIMARY KEY,
    "phoneNumber" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_phone_failed_sign_in_email_idx" ON "serverpod_phone_failed_sign_in" USING btree ("phoneNumber");
CREATE INDEX "serverpod_phone_failed_sign_in_time_idx" ON "serverpod_phone_failed_sign_in" USING btree ("time");

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_user_info" ALTER COLUMN "userName" DROP NOT NULL;

--
-- MIGRATION VERSION FOR serverpod_chat
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_chat', '20241120024833768', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241120024833768', "timestamp" = now();

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
