-- Creating the name of my database
CREATE SCHEMA empires_club;

USE empires_club;

-- Creating tables 
CREATE TABLE Customer(
	customerID int primary key auto_increment,
    first_name varchar(150) not null,
    last_name varchar(150) not null,
    gender enum('Male','Female'),
    email varchar(250) unique default null,
    LocationID int,
    
    FOREIGN KEY (LocationID) references Location(locationID)
    );
    
CREATE TABLE Product(
	productid int auto_increment primary key,
    product_name varchar(300) not null,
    description text not null,
	price float not null,
    stock_quantity int default null
	);
    
CREATE TABLE Location(
	locationID int auto_increment primary key,
    city varchar(250) not null,
	state varchar(250) not null,
    postal_code varchar(250) default null
	);
    
CREATE TABLE Orders(
	orderID int auto_increment primary key,
    order_date datetime not null,
    quantity int not null,
    productID int not null,
    customerID int not null,
    
    constraint product_foreign FOREIGN KEY (productID) references product(productID),
    constraint customer_foreign foreign key (customerID) references customer(customerID)
	);
    
    Truncate Table Customer;
    
