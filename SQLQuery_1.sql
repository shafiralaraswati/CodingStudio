CREATE DATABASE eCommerce;
--dibawah ini adalah query untuk membuat tabel customer--
CREATE TABLE Customer(
    CustomerID CHAR(5) NOT NULL PRIMARY KEY,
    CONSTRAINT cekCustomerID CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
    CustomerName VARCHAR(50) NOT NULL,
    CustomerGender VARCHAR(10),
    CONSTRAINT cekCustomerGender CHECK(CustomerGender = 'Male' or CustomerGender = 'Female'),
    CustomerPhone VARCHAR(13),
    CustomerAddress VARCHAR(100)
);
--dibawah ini adalah query untuk membuat tabel staff--
CREATE TABLE Staff(
    StaffID CHAR(5) NOT NULL PRIMARY KEY,
    CONSTRAINT cekStaffID CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),
    StaffName VARCHAR(50) NOT NULL,
    StaffGender VARCHAR(10),
    CONSTRAINT cekStaffGender CHECK(StaffGender = 'Male' or StaffGender = 'Female'),
    StaffPhone VARCHAR(13),
    StaffAddress VARCHAR(100),
    StaffSalary NUMERIC (11,2),
    StaffPosition VARCHAR(20)
);
--dibawah ini adalah query untuk membuat tabel itemtype--
CREATE TABLE ItemType(
    ItemTypeID CHAR(5) NOT NULL PRIMARY KEY,
    CONSTRAINT cekItemTypeID CHECK(ItemTypeID LIKE 'IT[0-9][0-9][0-9]'),
    ItemTypeName VARCHAR(50) NOT NULL
);
--dibawah ini adalah query untuk membuat tabel item--
CREATE TABLE Item(
    ItemID CHAR(5) NOT NULL PRIMARY KEY,
    CONSTRAINT cekIDitem CHECK(ItemID LIKE 'IM[0-9][0-9][0-9]'),
    ItemTypeID CHAR(5) REFERENCES ItemType ON UPDATE CASCADE ON DELETE CASCADE,
    ItemName VARCHAR (15) NOT NULL,
    Price NUMERIC(11,2),
    Quantity INTEGER
);
--dibawah ini adalah query untuk membuat tabel headerselltransaction--
CREATE TABLE HeaderSellTransaction(
    TransactionID CHAR(5) NOT NULL PRIMARY KEY,
    CONSTRAINT cekIDTrans CHECK(TransactionID LIKE 'TR[0-9][0-9][0-9]'),
    CustomerID CHAR(5) REFERENCES Customer ON UPDATE CASCADE ON DELETE CASCADE,
    StaffID CHAR(5) REFERENCES Staff ON UPDATE CASCADE ON DELETE CASCADE,
    TransactionDate DATE,
    PaymentType VARCHAR(20)
);
--dibawah ini adalah query untuk membuat tabel Detailselltransaction--
CREATE TABLE DetailSellTransaction(
    TransactionID CHAR(5) REFERENCES HeaderSellTransaction ON UPDATE CASCADE ON DELETE CASCADE,
    ItemID CHAR(5) REFERENCES Item ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY(TransactionID, ItemID)
);