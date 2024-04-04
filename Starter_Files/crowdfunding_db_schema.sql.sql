-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcatgeory_id" int   NOT NULL,
    "subcategory" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcatgeory_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" VARCHAR(200)   NOT NULL,
    "description" VARCHAR(200)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" VARCHAR(200)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR(200)   NOT NULL,
    "currency" VARCHAR(200)   NOT NULL,
    "launched_date" timestamptz   NOT NULL,
    "end_date" timestamptz   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR(200)   NOT NULL,
    "last_name" VARCHAR(200)   NOT NULL,
    "email" VARCHAR(200)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "category" ADD CONSTRAINT "fk_category_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign" ("category_id");

ALTER TABLE "subcategory" ADD CONSTRAINT "fk_subcategory_subcatgeory_id" FOREIGN KEY("subcatgeory_id")
REFERENCES "campaign" ("subcategory_id");

ALTER TABLE "contacts" ADD CONSTRAINT "fk_contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign" ("contact_id");

