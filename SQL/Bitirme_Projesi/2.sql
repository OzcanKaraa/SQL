CREATE TABLE item (
  ITEMCODE VARCHAR(50) PRIMARY KEY,
  ITEMNAME VARCHAR(100),
  CATEGORY_NAME1 VARCHAR(100),
  CATEGORY_NAME2 VARCHAR(100),
  CATEGORY_NAME3 VARCHAR(100)
);

CREATE TABLE branch (
  BRANCHNR VARCHAR(50) PRIMARY KEY,
  BRANCH VARCHAR(100),
  CITY VARCHAR(100),
  REGION VARCHAR(100),
  LATITUDE NUMERIC,
  LONGITUDE NUMERIC
);

CREATE TABLE client (
  CLIENTCODE VARCHAR(50) PRIMARY KEY,
  CLIENTNAME VARCHAR(100),
  GENDER VARCHAR(10)
);


CREATE TABLE  brand(
  BRANDCODE VARCHAR(50) PRIMARY KEY,
  BRAND VARCHAR(100)
);

