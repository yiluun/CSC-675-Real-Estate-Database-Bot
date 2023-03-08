USE CSC675;

-- AGENT INSERTS
INSERT INTO Agent (first_name, last_name, dob, phone, email)
	VALUES ('Daniel', 'Guo', '1995-06-08', '515-327-9418', 'daniel.guo@gmail.com');
INSERT INTO Agent (first_name, last_name, dob, phone, email)
	VALUES ('Jennifer', 'Wren', '1985-10-11', '425-353-7653', 'jenni543@gmail.com');
INSERT INTO Agent (first_name, last_name, dob, phone, email)
	VALUES ('Cain', 'Cruz', '2001-11-03', '655-237-7564', 'caincruzagent@yahoo.com');
    
    
-- ADDRESS INSERTS
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (1, '4231 Gray Mountain Circle', 'Fremont', 94536);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (2, '131 Rendall Street', 'Anaheim', 94226);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (3, '655 Richard Street', 'Anaheim', 94226);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (4, '3125 Grimmer Palm', 'Fremont', 94536);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (5, '21 Rejina Lane', 'San Diego', 94221);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (6, '5644 Auto Mall', 'Fremont', 94536);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (7, '432 Glen Drive', 'Glenview', 94422);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (8, '54 Seaside Coast', 'Santa Cruz', 94533);
INSERT INTO Address (address_id, street, city, zip_code)
	VALUES (9, '114 Oakwood', 'San Francisco', 94886);


    
    
-- PROPERTY INSERTS
INSERT INTO Property (property_id, property_name, address_FK)
	VALUES (1, NULL, 1);
INSERT INTO Property (property_name, address_FK)
	VALUES ('James Station', 2);
INSERT INTO Property (property_name, address_FK)
	VALUES ('Anaheim Library', 3);
INSERT INTO Property (property_name, address_FK)
	VALUES (NULL, 4);
INSERT INTO Property (property_name, address_FK)
	VALUES (NULL, 5);
INSERT INTO Property (property_name, address_FK)
	VALUES (NULL, 6);
INSERT INTO Property (property_name, address_FK)
	VALUES ('Glen Apartments', 7);
INSERT INTO Property (property_name, address_FK)
	VALUES ('Seaside Apartments', 8);
INSERT INTO Property (property_name, address_FK)
	VALUES ('Oakwood Apartments', 9);
    
    
-- FIRM INSERTS
INSERT INTO Firm (firm_id, firm_name, address_FK)
	VALUES (1, 'California Elite Brokerage', 4);
INSERT INTO Firm (firm_id, firm_name, address_FK)
	VALUES (2, 'Ragine', 5);
INSERT INTO Firm (firm_id, firm_name, address_FK)
	VALUES (3, 'Boyse Real Estate', 6);
    
-- DEPARTMENT INSERTS
INSERT INTO Department (department_id, department_name, Firm_FK)
	VALUES (1, 'Sales', 1);
INSERT INTO Department (department_id, department_name, Firm_FK)
	VALUES (2, 'Marketing', 1);
INSERT INTO Department (department_id, department_name, Firm_FK)
	VALUES (3, 'Finance', 1);
INSERT INTO Department (department_id, department_name, Firm_FK)
	VALUES (4, 'Marketing', 2);
INSERT INTO Department (department_name, Firm_FK)
	VALUES ('Marketing', 3);
    
-- JOB INSERTS
INSERT INTO Job (job_id, job_name, department_FK, firm_FK)
	VALUES (1, 'Social Media Marketing', 2, 1);
INSERT INTO Job (job_id, job_name, department_FK, firm_FK)
	VALUES (2, 'Brand Management', 2, 1);
INSERT INTO Job (job_id, job_name, department_FK, firm_FK)
	VALUES (3, 'Product Marketing ', 2, 3);
INSERT INTO Job (job_id, job_name, department_FK, firm_FK)
	VALUES (4, 'Real Estate Agent ', 1, 1);
    
-- EMPLOYEE INSERTS
INSERT INTO Employee (employee_id, manager_id, agent_FK, firm_FK, department_FK, job_FK)
	VALUES (1, 1, 1, 1, 1, 4);
INSERT INTO Employee (employee_id, agent_FK, firm_FK, department_FK, job_FK)
	VALUES (2, 2, 1, 1, 4);
INSERT INTO Employee (employee_id, agent_FK, firm_FK, department_FK, job_FK)
	VALUES (3, 3, 2, 3, 4);
    
-- PROSPECT INSERTS
INSERT INTO Prospect (prospect_id, first_name, last_name, dob, phone, email)
	VALUES (1, 'Jane', 'Doe', '2002-01-12', 510-421-5433, 'janedoe1@gmail.com');
INSERT INTO Prospect (prospect_id, first_name, last_name, dob, phone, email)
	VALUES (2, 'Peter', 'Thiel', '1975-04-21', 432-543-5113, 'peterthiel@gmail.com');
INSERT INTO Prospect (prospect_id, first_name, last_name, dob, phone, email)
	VALUES (3, 'Rachel', 'Moore', '1994-11-12', 444-431-6574, 'rachel5sunlight@gmail.com');

-- USER INSERTS
INSERT INTO User (user_id, username, password, date_created, user_type, address_FK)
	VALUES (1, 'dguo', 'danoif32h', '2021-11-11 13:23:44', 'admin', 1);
INSERT INTO User (user_id, username, password, date_created, user_type)
	VALUES (2, 'jenn', 'gsh352h', '2022-10-13 11:11:24', 'user');
INSERT INTO User (user_id, username, password, date_created, user_type)
	VALUES (3, 'thorn', '53tgsr5rwh', '2022-07-12 10:08:20', 'user');
INSERT INTO User (user_id, username, password, date_created, user_type)
	VALUES (4, 'dragon1', 'htgd5adh', '2021-04-12 10:00:20', 'user');
INSERT INTO User (user_id, username, password, date_created, user_type)
	VALUES (5, 'hereforrooms', 'dwafahjfg3', '2021-07-11 11:12:20', 'user');
INSERT INTO User (user_id, username, password, date_created, user_type)
	VALUES (6, 'hellotoms', 'asgsegs3', '2021-11-06 05:05:20', 'user');
INSERT INTO User (user_id, username, password, date_created, user_type)
	VALUES (7, 'fiveoneoh', 'djygnfg3', '2022-04-11 01:12:20', 'user');
    
    
-- PAYMENT METHOD INSERTS
INSERT INTO `Payment Method` (payment_method_id, payment_method_type, user_FK)
	VALUES (1, 'credit card', 1);
INSERT INTO `Payment Method` (payment_method_id, payment_method_type, user_FK)
	VALUES (2, 'debit card', 2);
INSERT INTO `Payment Method` (payment_method_id, payment_method_type, user_FK)
	VALUES (3, 'credit card', 2);
    
-- INVOICE INSERTS
INSERT INTO Invoice (invoice_id, payment_type, payment_datetime, sale_price)
	VALUES (1, 'credit card', '2021-07-05 11:10:10', 440000.00);
INSERT INTO Invoice (invoice_id, payment_type, payment_datetime, sale_price)
	VALUES (2, 'credit card', '2021-02-11 05:06:10', 150000.00);
INSERT INTO Invoice (invoice_id, payment_type, payment_datetime, sale_price)
	VALUES (3, 'debit card', '2020-04-02 08:15:10', 6670000.00);
    
-- USERAGENT INSERTS
INSERT INTO UserAgent (userAgent_id, user_FK, agent_FK, sales)
	VALUES (1, 1, 1, 15);
INSERT INTO UserAgent (userAgent_id, user_FK, agent_FK, sales)
	VALUES (2, 2, 2, 11);
INSERT INTO UserAgent (userAgent_id, user_FK, agent_FK, sales)
	VALUES (3, 3, 3, 21);
    
-- USERPROSPECT INSERTS
INSERT INTO UserProspect (userProspect_id, user_FK, prospect_FK)
	VALUES (1, 5, 1);
INSERT INTO UserProspect (userProspect_id, user_FK, prospect_FK)
	VALUES (2, 6, 2);
INSERT INTO UserProspect (userProspect_id, user_FK, prospect_FK)
	VALUES (3, 7, 3);
    
-- LISTING INSERTS
INSERT INTO Listing (listing_id, user_FK, property_FK, price)
	VALUES (1, 1, 4, 1500000.00);
INSERT INTO Listing (listing_id, user_FK, property_FK, price)
	VALUES (2, 4, 5, 1000000.00);
INSERT INTO Listing (listing_id, user_FK, property_FK, price)
	VALUES (3, 5, 6, 1650000.00);
    
-- AMENITIES INSERTS
INSERT INTO Amenities (amenities_id, property_FK, num_bedrooms, num_bathrooms, num_garage, num_kitchen, num_parking)
	VALUES (1, 1, 3, 3, 2, 1, 0);
INSERT INTO Amenities (amenities_id, property_FK, num_bedrooms, num_bathrooms, num_garage, num_kitchen, num_parking)
	VALUES (2, 2, 2, 2, 1, 1, 0);
INSERT INTO Amenities (amenities_id, property_FK, num_bedrooms, num_bathrooms, num_garage, num_kitchen, num_parking)
	VALUES (3, 3, 2, 3, 2, 1, 0);
INSERT INTO Amenities (amenities_id, property_FK, num_bedrooms, num_bathrooms, num_garage, num_kitchen, num_parking)
	VALUES (4, 7, 2, 1, 0, 1, 1);
INSERT INTO Amenities (amenities_id, property_FK, num_bedrooms, num_bathrooms, num_garage, num_kitchen, num_parking)
	VALUES (5, 8, 2, 2, 0, 1, 1);
INSERT INTO Amenities (amenities_id, property_FK, num_bedrooms, num_bathrooms, num_garage, num_kitchen, num_parking)
	VALUES (6, 9, 1, 1, 0, 1, 1);
    
    
-- HOUSE INSERTS
INSERT INTO House (house_id, property_FK, amenities_FK)
	VALUES (1, 1, 1);
INSERT INTO House (house_id, property_FK, amenities_FK)
	VALUES (2, 4, 2);
INSERT INTO House (house_id, property_FK, amenities_FK)
	VALUES (3, 5, 3);
    
-- APARTMENT INSERTS
INSERT INTO Apartment (property_FK)
 VALUES (7);
INSERT INTO Apartment (property_FK)
 VALUES (8);
INSERT INTO Apartment (property_FK)
 VALUES (9);

-- UNIT INSERTS
INSERT INTO Unit (unit_id, unit_number, rent, amenities_FK)
	VALUES (1, 201, 2500, 4);
INSERT INTO Unit (unit_id, unit_number, rent, amenities_FK)
	VALUES (2, 202, 3500, 5);
INSERT INTO Unit (unit_id, unit_number, rent, amenities_FK)
	VALUES (3, 203, 2000, 6);


