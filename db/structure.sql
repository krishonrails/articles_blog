CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "text" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "bells" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "categorization" ("product_id" integer NOT NULL, "order_id" integer NOT NULL);
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "commenter" varchar(255), "body" text, "article_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "subtotal" decimal(11,2), "tax" decimal(11,2), "shipping" decimal(11,2), "total" decimal(11,2), "status" integer DEFAULT 1, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "orders_products" ("product_id" integer NOT NULL, "order_id" integer NOT NULL);
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime, "part_number" varchar(255), "price" varchar(255), "price3" decimal(5,2), "description_long" varchar(255), "part_no" varchar(255), "myname" varchar(255), "orders_id" integer);
CREATE TABLE "products3" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" text, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "things" ("status" varchar(255), "first_name" varchar(255), "last_name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE INDEX "index_bells_on_description" ON "bells" ("description");
CREATE INDEX "index_categorization_on_order_id" ON "categorization" ("order_id");
CREATE INDEX "index_categorization_on_product_id" ON "categorization" ("product_id");
CREATE INDEX "index_comments_on_article_id" ON "comments" ("article_id");
CREATE INDEX "index_products3_on_name" ON "products3" ("name");
CREATE INDEX "index_products_on_part_no" ON "products" ("part_no");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20140830075254');

INSERT INTO schema_migrations (version) VALUES ('20140830091158');

INSERT INTO schema_migrations (version) VALUES ('20140904033239');

INSERT INTO schema_migrations (version) VALUES ('20140904033708');

INSERT INTO schema_migrations (version) VALUES ('20140904034401');

INSERT INTO schema_migrations (version) VALUES ('20140904034703');

INSERT INTO schema_migrations (version) VALUES ('20140904034858');

INSERT INTO schema_migrations (version) VALUES ('20140904041654');

INSERT INTO schema_migrations (version) VALUES ('20140905025608');

INSERT INTO schema_migrations (version) VALUES ('20140905030619');

INSERT INTO schema_migrations (version) VALUES ('20140905034120');

INSERT INTO schema_migrations (version) VALUES ('20140905034403');

INSERT INTO schema_migrations (version) VALUES ('20140905034947');

INSERT INTO schema_migrations (version) VALUES ('20140908032429');

INSERT INTO schema_migrations (version) VALUES ('20140908032708');

INSERT INTO schema_migrations (version) VALUES ('20140908033312');

INSERT INTO schema_migrations (version) VALUES ('20140908040743');

INSERT INTO schema_migrations (version) VALUES ('20140908041121');

INSERT INTO schema_migrations (version) VALUES ('20140909025047');

INSERT INTO schema_migrations (version) VALUES ('20140909033017');

