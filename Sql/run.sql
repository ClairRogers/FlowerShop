USE clairsflowershop;

-- CREATE TABLE flowers (
--   id VARCHAR(255) NOT NULL,
--   name VARCHAR(150) NOT NULL,
--   color VARCHAR(150) NOT NULL
-- );

-- ALTER TABLE flowers
-- ADD PRIMARY KEY (id);

-- CREATE TABLE bouquets (
--   id VARCHAR(255) NOT NULL,
--   name VARCHAR(155) NOT NULL,
--   price int NOT NULL
-- );

-- ALTER TABLE bouquets 
--   ADD PRIMARY KEY (id);

-- CREATE TABLE inventory (
--   id int NOT NULL AUTO_INCREMENT,
--   flowerId VARCHAR(255) NOT NULL,
--   bouquetId VARCHAR(255) NOT NULL,
--   PRIMARY KEY (id),
--   FOREIGN KEY (flowerId) REFERENCES flowers(id),
--   FOREIGN KEY (bouquetId) REFERENCES bouquets(id)
-- );

-- INSERT INTO flowers (id, name, color)
-- VALUES ("ROS", "Classic Rose", "red"), ("YROS", "Yellow Rose", "yellow"), ("WROS", "White Rose", "white"), ("PROS", "Pink Rose", "pink");
-- VALUES ("SUN", "Sunflower", "yellow"), ("DAIS", "Daisy", "white"), ("LIL", "Lilly", "white"), ("CARN", "Carnation", "pink"), ("LILA", "Lilac", "purple"), ("SNAP", "Snapdragon", "red"), ("DAFF", "Daffodil", "yellow"), ("TUL", "Tulip", "white");
-- VALUES ("PAM", "Pampas Grass", "tan");

-- INSERT INTO bouquets (id, name, price)
-- VALUES ("12ROS", "Dozen Roses", "20"), ("VALEN", "Valentine's Day", "20"), ("FRIEND", "Friendship", "15"), ("R/W", "Red and White", "18"), ("SUNFL", "Sunshine", "10"), ("SPR", "Spring Mix", "15"), ("ELEG", "Elegance", "20");

-- INSERT INTO inventory (flowerId, bouquetId)
-- VALUES ("ROS", "12ROS"), ("ROS", "VALEN"), ("PROS", "VALEN"), ("YROS", "FRIEND"), ("ROS", "R/W"), ("SNAP", "R/W"), ("DAIS", "R/W"), ("LIL", "R/W"), ("WROS", "R/W"), ("TUL", "R/W"), ("SUN", "SUNFL"), ("CARN", "SPR"), ("DAFF", "SPR"), ("LILA", "SPR"), ("SNAP", "SPR"), ("TUL", "SPR"), ("LIL", "ELEG"), ("WROS", "ELEG"), ("PAM", "ELEG"), ("TUL", "ELEG"), ("DAIS", "ELEG");





-- SELECT * FROM inventory
-- WHERE bouquetId = "R/W";

-- SELECT name FROM flowers
-- WHERE color = "white";

SELECT * FROM inventory i
INNER JOIN flowers f ON f.id = i.flowerId
WHERE bouquetId = "ELEG";