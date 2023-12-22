/* Creating a table “pet_animals” using CREATE command [DDL]: */
CREATE TABLE pet_animals(id INT NOT NULL, name VARCHAR(30), breed VARCHAR(30), color VARCHAR(30), sex VARCHAR(30), adoption_status INT);


/* Creating a table for Adoption Details using CREATE Command [DDL] :  */
CREATE TABLE adoptions(animal_id INT NOT NULL, name VARCHAR(30) ,contact VARCHAR(30), date TIMESTAMP);


/*  inserting the details of all  dogs using INSERT Command [DML]:  */
INSERT INTO pet_animals(id, name, breed, color, sex, adoption_status) VALUES (001, 'Tommy', 'Pitbull','Black','Male', 0);
INSERT INTO pet_animals(id, name, breed, color, sex, adoption_status) VALUES (002, 'Bellyflop','Beagle','Brown','Male',0);
INSERT INTO pet_animals(id, name, breed, color, sex, adoption_status) VALUES (003, 'Snowy','Husky', 'White','Female',0);
INSERT INTO pet_animals(id, name, breed, color, sex, adoption_status) VALUES (004, 'Princess','Pomerian','Black','Female',1);
INSERT INTO pet_animals(id, name, breed, color, sex, adoption_status) VALUES (005,'Cricket','Chihuahua','Brown','Male',1);
INSERT INTO pet_animals(id, name, breed, color, sex, adoption_status) VALUES (006, 'Spot','Dalmation','Balck % White','Male', 0);


/*   Retrieving list of all dogs using SELECT * Command [DML] : */
SELECT * FROM pet_animals;

/*  Listing the Dogs available for adoption using SELECT & WHERE Clause [DML]:  */
SELECT * FROM pet_animals WHERE adoption_status = 0;

/* Update the color of Princess to brown using UPDATE , SET & WHERE Command [DML] :  */
UPDATE pet_animals SET color='Brown' WHERE id=5;

/* Updating the adoption_details table for Princess (Poodle) and Spot (Dalmation) as they are adopted - using UPDATE, SET, WHERE & INSERT Command : */
UPDATE pet_animals SET adoption_status=1 WHERE breed = 'Poodle';
UPDATE pet_animals SET adoption_status=1 WHERE breed = 'Dalmation';

INSERT INTO adoptions(animal_id, name, contact, date) VALUES(5, 'Patalie', 'poodlequeen@cockroachlabs.com', CURRENT_TIMESTAMP);
INSERT INTO adoptions(animal_id, name, contact, date) VALUES(6, 'Ella', 'ellacrew@cockroachlabs.com', CURRENT_TIMESTAMP);


/*  Deleting the Bellyflop dog details from the table using DELETE Command [DML] :   */
DELETE FROM pet_animals WHERE name='Bellyflop';


/*  Changing the status of Snowy to 1 as it is Adopted using UPDATE Command [DML] :   */
UPDATE pet_animals SET adoption_status=1 WHERE name='Snowy';


/*  Adding new column for Cats in pet_animals table using ALTER Command [DDL] :  */
ALTER TABLE pet_animals ADD COLUMN species VARCHAR(30);


/* SET all current pet_animals as dog using UPDATE & SET Command [DML]:   */
UPDATE pet_animals SET species='Dog' ;


/*  Adding 3 Cat details to the pet_animals table using INSERT Command [DML] :  */
INSERT INTO pet_animals(id, name, breed, color, gender, status, species) VALUES(007, 'Meowmix', 'Munchkin', 'Yellow', 'Female', 0, 'Cat');
INSERT INTO pet_animals(id, name, breed, color, gender, status, species) VALUES(008, 'Ash', 'Persian', 'Grey', 'Female', 0 , 'Cat');
INSERT INTO pet_animals(id, name, breed, color,gender, status, species) VALUES(009, 'Tiger', 'Bengal', 'Brown', 'Male',0, 'Cat');



/*  Deleting Shelters table data using DELETE Command [DML] :  */

DELETE FROM shelters; 


/*Changing the table name “SHELTERS” → “NEW_SHELTERS” using RENAME Command [DDL] :  */
ALTER TABLE shelters RENAME TO new_shelters;
