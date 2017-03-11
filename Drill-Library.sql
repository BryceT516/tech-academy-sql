USE master
GO

IF EXISTS (SELECT * from sys.databases WHERE name='TuckerLibraries')
DROP DATABASE TuckerLibraries
GO

CREATE DATABASE TuckerLibraries
GO

USE TuckerLibraries
GO

CREATE TABLE BOOK
	(
		BookID int PRIMARY KEY NOT NULL IDENTITY(1,1),
		Title varchar(50),
		PublisherName varchar(50)
	)


CREATE TABLE BOOK_AUTHORS
	(
		BookID int PRIMARY KEY NOT NULL,
		AuthorName varchar(50)
	)

CREATE TABLE PUBLISHER
	(
		Name varchar(50) PRIMARY KEY NOT NULL,
		PublisherAddress varchar(100),
		Phone varchar(15)
	)

CREATE TABLE BOOK_COPIES
	(
		BookID int NOT NULL,
		BranchID int NOT NULL,
		NoOfCopies int,
		PRIMARY KEY (BookID, BranchID)
	)

CREATE TABLE BOOK_LOANS
	(
		BookID int NOT NULL,
		BranchID int NOT NULL,
		CardNo int NOT NULL,
		DateOut DATETIME NOT NULL,
		DueDate DATETIME NOT NULL,
		PRIMARY KEY (BookID, BranchID, CardNo)
	)

CREATE TABLE BORROWER
	(
		CardNo int PRIMARY KEY NOT NULL,
		Name varchar (50),
		BorrowerAddress varchar (100),
		Phone varchar (15)
	)


CREATE TABLE LIBRARY_BRANCH
	(
		BranchID int PRIMARY KEY NOT NULL,
		BranchName varchar(50),
		BranchAddress varchar(100)
	)


INSERT INTO BOOK
VALUES 
( 'To Kill a Mocking Bird', 'Fowl Press' ),
( 'IT', 'Horror 4 Fun' ),
( 'The Eye of the World', 'Tor' ),
( 'The Great Hunt', 'Tor' ),
( 'The Fires of Heaven', 'Tor' ),
( 'The Dragon Reborn', 'Tor' ),
( 'The Shadow Rising', 'Tor' ),
( 'The Lord of Chaos', 'Tor' ),
( 'A Crown of Swords', 'Tor' ),
( 'Knife of Dreams', 'Tor' ),
( 'Pawn of Prophecy', 'Penguin Books' ),
( 'Queen of Sorcery', 'Penguin Books' ),
( 'Magician''s Gambit', 'Penguin Books' ),
( 'Castle of Wizardry', 'Penguin Books' ),
( 'Enchanter''s End Game', 'Penguin Books' ),
( 'Finders Keepers', 'Horror 4 Fun' ),
( 'Kindness Killing', 'Horror 4 Fun' ),
( 'Laughing Death', 'Horror 4 Fun' ),
( 'Duck', 'Fowl Press' ),
( 'Hawk', 'Fowl Press' ),
( 'Owl', 'Fowl Press' ),
( 'Eagle', 'Fowl Press' ),
( 'Crow', 'Fowl Press' ),
( 'Raven', 'Fowl Press' ),
( 'Flamingo', 'Fowl Press' ),
( 'Investing for Dummies', 'For Dummies' ),
( 'Juggling for Dummies', 'For Dummies' ),
( 'Programming your VCR for Dummies', 'For Dummies' ),
( 'Drunk Driving for Dummies', 'For Dummies' ),
( 'Showering for Dummies', 'For Dummies' ),
( 'Alcohol for Dummies', 'For Dummies' ),
( 'Libraries for Dummies', 'For Dummies' ),
( 'The Lost Tribe', 'Savage Press' ),
( 'The Found Tribe', 'Savage Press' ),
( 'The Quiet Tribe', 'Savage Press' ),
( 'The Loud Tribe', 'Savage Press' ),
( 'The Remote Tribe', 'Savage Press' )



INSERT INTO BOOK_AUTHORS VALUES
(1, 'Harper Lee'),
(2, 'Stephen King'),
(3, 'Robert Jordan'),
(4, 'Robert Jordan'),
(5, 'Robert Jordan'),
(6, 'Robert Jordan'),
(7, 'Robert Jordan'),
(8, 'Robert Jordan'),
(9, 'Robert Jordan'),
(10, 'Robert Jordan'),
(11, 'David & Leigh Eddings'),
(12, 'David & Leigh Eddings'),
(13, 'David & Leigh Eddings'),
(14, 'David & Leigh Eddings'),
(15, 'David & Leigh Eddings'),
(16, 'Stephen King'),
(17, 'Hunter Black'),
(18, 'Hunter Black'),
(19, 'Bill Quackers'),
(20, 'Pigeon Malloy'),
(21, 'Penguin Feather'),
(22, 'Bob Inwater'),
(23, 'Cardinal Fowler'),
(24, 'Bill Peck'),
(25, 'Earl E. Bird'),
(26, 'Lot Sa Cash'),
(27, 'Droppin Stuff'),
(28, 'Beta Was better'),
(29, 'Tipsy Smith'),
(30, 'B. O. Roberts'),
(31, 'Tipsy Wienhouser'),
(32, 'Shush Yoo'),
(33, 'Seek Ing Yoo'),
(34, 'Yoo Arehere'),
(35, 'Shush Yoo'),
(36, 'Yel Enn'),
(37, 'Fa Walker')


INSERT INTO PUBLISHER VALUES
('Fowl Press', '342 NE 89th Ave, Reeding IL 88392', '(839) 265-3049'),
('Tor', '3278 S 83rd Ave, Hommily OR 96434', '(366) 315-9426'),
('Horror 4 Fun', '997 SE 73th Ave, BargeLock PA 65342', '(235) 678-1473'),
('Penguin Books', '334 W Main St, HoleBottom IL 63422', '(632) 325-2784'),
('For Dummies', '4523 E Circle CI, Yawlings IL 46422', '(432) 167-9542'),
('Savage Press', '8934 Flowing St, Bookings VA 23256', '(678) 623-9239')


INSERT INTO LIBRARY_BRANCH VALUES
(101, 'Central', '352 E Main St., Hermiston, OR 97838'),
(102, 'Sharpstown', '356 W Fifth Ave., Boardman, OR 95882'),
(103, 'Frederick', '1032 23rd St., Eugene, OR 97243'),
(104, 'Elbow', '567 E Middleton Ave., Bend, OR 97943'),
(105, 'International Local 505', '34 W East St., Condon, OR 97774'),
(106, 'Adjacent', '562 S 7th Ave., Oregon City, OR 97109')



INSERT INTO BORROWER VALUES
(1, 'Joe Bob', '56 S 56th St, Eugene, OR 97243', '(503) 764-9128'),
(2, 'Billy Todd', '2 N 2nd Ave, Hermiston, OR 97841', '(234) 724-1234'),
(3, 'Janet Malloy', '14 S 14th Ave, Boardman, OR 95882', '(234) 764-2345'),
(4, 'Sis Teach', '13 E 13th St, Bend OR 98734', '(234) 325-3466'),
(5, 'Deveroe Heath', '23 N 23rd Ave, Oregon City OR 91536', '(435) 532-4576'),
(6, 'Malachi Devenride', '1010 W East St, Hermiston OR 97838', '(344) 112-5678'),
(7, 'Esther Von Brawm', '34512 Main St, Portland Or 97145', '(876) 345-6789'),
(8, 'Vincent Powers', '50 N 123 Ave, Condon OR 97465', '(675) 523-8904'),
(9, 'John Eventrowel', '10 S Bismark St, Eugene OR 93645', '(235) 456-3457'),
(10, 'Evan Weygant', '34 N 3rd Ave, Bend OR 98734', '(453) 764-5685')







SELECT * FROM LIBRARY_BRANCH

SELECT * FROM BORROWER

SELECT * FROM BOOK AS B INNER JOIN BOOK_AUTHORS AS A ON B.BookID=A.BookID
INNER JOIN PUBLISHER AS P ON B.PublisherName=P.Name

