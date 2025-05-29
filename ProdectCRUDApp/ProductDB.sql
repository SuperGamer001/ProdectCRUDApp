-- Switch to master in case the user or dev has an
-- open connection to the ProductDB.
use master

DROP DATABASE IF EXISTS ProductDB
GO

CREATE DATABASE ProductDB
GO

use ProductDB
GO

CREATE TABLE Product 
(
    ProductId    int            IDENTITY(1,1) PRIMARY KEY
    ,Name        varchar(50)    NOT NULL UNIQUE
    ,Price       numeric(10, 2) NOT NULL CHECK (Price >= 0 AND Price <= 10000000)
)
GO