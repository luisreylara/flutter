=====
CREATE TABLE orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int
);

CREATE TABLE persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);


ALTER TABLE Persons
ADD PRIMARY KEY (ID);

ALTER TABLE Orders
ADD PRIMARY KEY (OrderID);

ALTER TABLE Orders
ADD CONSTRAINT fk_order
FOREIGN KEY (PersonID) REFERENCES Persons(ID);


ALTER TABLE Persons
DROP PRIMARY KEY;
