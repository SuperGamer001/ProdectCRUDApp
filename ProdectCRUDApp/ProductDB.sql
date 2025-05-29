-- Switch to master in case the user or dev has an
-- open connection to the ProductDB.
use master

DROP DATABASE IF EXISTS ProductDB
GO

CREATE DATABASE ProductDB
GO

use ProductDB
GO

