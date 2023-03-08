USE CSC675;
SET SQL_SAFE_UPDATES = 0;
INSERT INTO Agent (name, last_name, age) VALUES ("Daniel", "Lee", 31), ("Lisa", "Lane", 24);
INSERT INTO Broker (agent) VALUES (1), (2);
UPDATE Agent SET name = "Mary" WHERE name = "Lisa";
-- DELETE Agent;
-- DELETE FROM Agent WHERE agent_id = 3;
TRUNCATE TABLE Agent; -- MUST TRUNCARTE BROKER FIRST BECAUSE OF FOREIGN KEY BEING USED

-- 1. Find the number of agents with sales above 10
	SELECT Agent.agent_id AS 'Agent'
    FROM Agent
    JOIN userAgent ON Agent.agent_id = userAgent.agent_FK
    WHERE userAgent.sales > 20;
    
-- 2. List each agent that lives in Fremont
	SELECT Agent.agent_id AS 'Agent ID', Agent.name AS 'Agent', Address.city AS 'City'
    FROM Agent
    JOIN userAgent ON Agent.agent_id = userAgent.agent_FK
    JOIN User ON userAgent.user_FK = User.user_id
    JOIN Address ON User.address_FK = Address.address_id
    WHERE Address.city = 'Fremont';
    
-- 3. Find the apartment units that cost less than $3,000 and have at least 2 bedrooms
	SELECT Unit.unit_id, Unit.unit_number, Unit.rent
    FROM Unit
    JOIN Amenities ON Unit.amenities_FK = Amenities.amenities_id
    WHERE Unit.rent < 3000 AND Amenities.num_bedrooms > 1;
    
-- 3. Find the property and listing owner with the highest cost that is being listed
	SELECT Property.property_id, MAX(Listing.price) AS 'Highest Price Listing', User.user_id AS 'User ID'
    FROM Property, Listing
    JOIN User ON Listing.user_FK = User.user_id
    HAVING MAX(Listing.price);

-- 5. Find the number of addresses in each city
	SELECT COUNT(Address.city) AS 'Number of Addresses', Address.city AS 'City'
    FROM Address
    GROUP BY Address.city;
   
   SELECT cheapest_property_with_n_bedrooms (1);