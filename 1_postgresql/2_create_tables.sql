set schema 'base_case';

CREATE TABLE "order_states"(
    "id" INTEGER NOT NULL,
    "name" CHAR(255) NOT NULL
);
ALTER TABLE
    "order_states" ADD PRIMARY KEY("id");
CREATE TABLE "product"(
    "id" INTEGER NOT NULL,
    "name" CHAR(255) NOT NULL,
    "provider" INTEGER NOT NULL,
    "price" DOUBLE PRECISION NOT NULL,
    "quantity" INTEGER NOT NULL
);
ALTER TABLE
    "product" ADD PRIMARY KEY("id");
CREATE TABLE "order"(
    "id" INTEGER NOT NULL,
    "customer" INTEGER NOT NULL,
    "products" INTEGER NOT NULL,
    "state" INTEGER NOT NULL,
    "delivery" INTEGER NOT NULL,
    "sum" DOUBLE PRECISION NOT NULL,
    "date" DATE NOT NULL
);
ALTER TABLE
    "order" ADD PRIMARY KEY("id");
CREATE TABLE "order_product"(
    "id" INTEGER NOT NULL,
    "order" INTEGER NOT NULL,
    "product" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL
);
ALTER TABLE
    "order_product" ADD PRIMARY KEY("id");
CREATE TABLE "customer_states"(
    "id" INTEGER NOT NULL,
    "name" CHAR(255) NOT NULL
);
ALTER TABLE
    "customer_states" ADD PRIMARY KEY("id");
CREATE TABLE "customer"(
    "id" INTEGER NOT NULL,
    "name" CHAR(255) NOT NULL,
    "email" CHAR(255) NOT NULL,
    "phone" CHAR(255) NOT NULL,
    "state" INTEGER NOT NULL
);
ALTER TABLE
    "customer" ADD PRIMARY KEY("id");
CREATE TABLE "delivery"(
    "id" INTEGER NOT NULL,
    "date" DATE NOT NULL,
    "address" TEXT NOT NULL,
    "price" DOUBLE PRECISION NOT NULL
);
ALTER TABLE
    "delivery" ADD PRIMARY KEY("id");
CREATE TABLE "provider"(
    "id" INTEGER NOT NULL,
    "name" CHAR(255) NOT NULL,
    "phone" CHAR(255) NOT NULL,
    "email" CHAR(255) NOT NULL,
    "address" TEXT NOT NULL
);
ALTER TABLE
    "provider" ADD PRIMARY KEY("id");
ALTER TABLE
    "order_product" ADD CONSTRAINT "order_product_order_foreign" FOREIGN KEY("order") REFERENCES "order"("id");
ALTER TABLE
    "product" ADD CONSTRAINT "product_provider_foreign" FOREIGN KEY("provider") REFERENCES "provider"("id");
ALTER TABLE
    "order" ADD CONSTRAINT "order_delivery_foreign" FOREIGN KEY("delivery") REFERENCES "delivery"("id");
ALTER TABLE
    "order" ADD CONSTRAINT "order_state_foreign" FOREIGN KEY("state") REFERENCES "order_states"("id");
ALTER TABLE
    "customer" ADD CONSTRAINT "customer_state_foreign" FOREIGN KEY("state") REFERENCES "customer_states"("id");
ALTER TABLE
    "order_product" ADD CONSTRAINT "order_product_product_foreign" FOREIGN KEY("product") REFERENCES "product"("id");
ALTER TABLE
    "order" ADD CONSTRAINT "order_customer_foreign" FOREIGN KEY("customer") REFERENCES "customer"("id");
