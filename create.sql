# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V8.1.2                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          PT5-Stilwater_Simbaan_Camaso_Libres.dez         #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2024-09-22 00:10                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Items"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Items` (
    `ItemNumber` VARCHAR(100) NOT NULL,
    `Description` VARCHAR(100) NOT NULL,
    `AskingPrice` VARCHAR(100) NOT NULL,
    `Conditions` VARCHAR(100) NOT NULL,
    `Comments` VARCHAR(100) NOT NULL,
    CONSTRAINT `PK_Items` PRIMARY KEY (`ItemNumber`)
);

# ---------------------------------------------------------------------- #
# Add table "Clients"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Clients` (
    `ClientNumber` VARCHAR(100) NOT NULL,
    `ClientFirstname` VARCHAR(100) NOT NULL,
    `ClientMiddlename` VARCHAR(100) NOT NULL,
    `ClientLastname` VARCHAR(100) NOT NULL,
    `ClientAddress` VARCHAR(100) NOT NULL,
    `ItemNumber` VARCHAR(100) NOT NULL,
    CONSTRAINT `PK_Clients` PRIMARY KEY (`ClientNumber`)
);

# ---------------------------------------------------------------------- #
# Add table "Purchase"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `Purchase` (
    `PurchaseNumber` VARCHAR(100) NOT NULL,
    `PurchaseCost` VARCHAR(100) NOT NULL,
    `DatePurchased` VARCHAR(100) NOT NULL,
    `Condition` VARCHAR(100) NOT NULL,
    `ClientNumber` VARCHAR(100) NOT NULL,
    CONSTRAINT `PK_Purchase` PRIMARY KEY (`PurchaseNumber`)
);

# ---------------------------------------------------------------------- #
# Add table "Sales"                                                      #
# ---------------------------------------------------------------------- #

CREATE TABLE `Sales` (
    `SaleID` VARCHAR(100) NOT NULL,
    `CommisionPaid` VARCHAR(100) NOT NULL,
    `ActualSellingPrice` VARCHAR(100) NOT NULL,
    `SalesTax` VARCHAR(100) NOT NULL,
    `DateSold` VARCHAR(100) NOT NULL,
    `ClientNumber` VARCHAR(100) NOT NULL,
    CONSTRAINT `PK_Sales` PRIMARY KEY (`SaleID`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Clients` ADD CONSTRAINT `Items_Clients` 
    FOREIGN KEY (`ItemNumber`) REFERENCES `Items` (`ItemNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Purchase` ADD CONSTRAINT `Clients_Purchase` 
    FOREIGN KEY (`ClientNumber`) REFERENCES `Clients` (`ClientNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `Sales` ADD CONSTRAINT `Clients_Sales` 
    FOREIGN KEY (`ClientNumber`) REFERENCES `Clients` (`ClientNumber`) ON DELETE RESTRICT ON UPDATE RESTRICT;
