DROP TABLE DetailSellTransaction;
ALTER TABLE Item
ADD "Description" VARCHAR(100);
ALTER TABLE Item
DROP COLUMN "Description";
ALTER TABLE DetailSellTransaction
ADD "SellQuantity" INTEGER;