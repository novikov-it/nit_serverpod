BEGIN;

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
CREATE UNIQUE INDEX "serverpod_phone_auth_email" ON "serverpod_phone_auth" USING btree ("phoneNumber");

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
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20241006233911669', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241006233911669', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
