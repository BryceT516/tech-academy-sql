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
		DateOut DATE NOT NULL,
		DueDate DATE NOT NULL,
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



INSERT INTO BOOK_COPIES VALUES
(1, 101, 8),
(2, 101, 8),
(3, 101, 4),
(4, 101, 8),
(5, 101, 4),
(6, 101, 5),
(7, 101, 8),
(8, 101, 6),
(9, 101, 7),
(10, 101, 8),
(11, 101, 7),
(12, 101, 8),
(13, 101, 8),
(14, 101, 7),
(15, 101, 7),
(16, 101, 7),
(17, 101, 6),
(18, 101, 8),
(19, 101, 6),
(20, 101, 6),
(21, 101, 8),
(22, 101, 8),
(23, 101, 5),
(24, 101, 5),
(25, 101, 5),
(26, 101, 8),
(27, 101, 8),
(28, 101, 8),
(29, 101, 4),
(30, 101, 4),
(31, 101, 4),
(32, 101, 3),
(33, 101, 3),
(34, 101, 4),
(35, 101, 8),
(36, 101, 7),
(37, 101, 8),
(1, 102, 8),
(2, 102, 8),
(3, 102, 6),
(4, 102, 6),
(5, 102, 6),
(6, 102, 8),
(7, 102, 8),
(8, 102, 8),
(9, 102, 8),
(10, 102, 7),
(11, 102, 8),
(12, 102, 8),
(13, 102, 7),
(14, 102, 8),
(15, 102, 8),
(16, 102, 8),
(17, 102, 8),
(18, 102, 8),
(19, 102, 8),
(20, 102, 8),
(21, 102, 7),
(22, 102, 6),
(23, 102, 5),
(24, 102, 8),
(25, 102, 8),
(26, 102, 8),
(27, 102, 8),
(28, 102, 4),
(29, 102, 4),
(30, 102, 4),
(31, 102, 4),
(32, 102, 8),
(33, 102, 8),
(34, 102, 3),
(35, 102, 3),
(36, 102, 3),
(37, 102, 4),
(1, 103, 8),
(2, 103, 8),
(3, 103, 6),
(4, 103, 6),
(5, 103, 6),
(6, 103, 8),
(7, 103, 8),
(8, 103, 8),
(9, 103, 8),
(10, 103, 8),
(11, 103, 7),
(12, 103, 7),
(13, 103, 7),
(14, 103, 8),
(15, 103, 8),
(16, 103, 6),
(17, 103, 6),
(18, 103, 6),
(19, 103, 8),
(20, 103, 8),
(21, 103, 5),
(22, 103, 5),
(23, 103, 5),
(24, 103, 8),
(25, 103, 3),
(26, 103, 3),
(27, 103, 3),
(28, 103, 2),
(29, 103, 2),
(30, 103, 2),
(31, 103, 3),
(32, 103, 5),
(33, 103, 4),
(34, 103, 8),
(35, 103, 8),
(36, 103, 8),
(37, 103, 9),
(1, 104, 9),
(2, 104, 9),
(3, 104, 8),
(4, 104, 8),
(5, 104, 8),
(6, 104, 8),
(7, 104, 7),
(8, 104, 7),
(9, 104, 7),
(10, 104, 7),
(11, 104, 8),
(12, 104, 8),
(13, 104, 6),
(14, 104, 6),
(15, 104, 6),
(16, 104, 8),
(17, 104, 6),
(18, 104, 5),
(19, 104, 5),
(20, 104, 5),
(21, 104, 8),
(22, 104, 4),
(23, 104, 8),
(24, 104, 8),
(25, 104, 5),
(26, 104, 8),
(27, 104, 8),
(28, 104, 8),
(29, 104, 7),
(30, 104, 8),
(31, 104, 8),
(32, 104, 8),
(33, 104, 8),
(34, 104, 6),
(35, 104, 8),
(36, 104, 5),
(37, 104, 8),
(1, 105, 8),
(2, 105, 3),
(3, 105, 8),
(4, 105, 8),
(5, 105, 8),
(6, 105, 5),
(7, 105, 8),
(8, 105, 8),
(9, 105, 5),
(10, 105, 8),
(11, 105, 8),
(12, 105, 8),
(13, 105, 8),
(14, 105, 8),
(15, 105, 8),
(16, 105, 8),
(17, 105, 8),
(18, 105, 4),
(19, 105, 8),
(20, 105, 5),
(21, 105, 8),
(22, 105, 5),
(23, 105, 9),
(24, 105, 8),
(25, 105, 8),
(26, 105, 7),
(27, 105, 8),
(28, 105, 7),
(29, 105, 6),
(30, 105, 6),
(31, 105, 6),
(32, 105, 8),
(33, 105, 8),
(34, 105, 8),
(35, 105, 8),
(36, 105, 8),
(37, 105, 8),
(1, 106, 8),
(2, 106, 8),
(3, 106, 8),
(4, 106, 8),
(5, 106, 8),
(6, 106, 8),
(7, 106, 8),
(8, 106, 8),
(9, 106, 9),
(10, 106, 8),
(11, 106, 7),
(12, 106, 8),
(13, 106, 8),
(14, 106, 8),
(15, 106, 7),
(16, 106, 6),
(17, 106, 7),
(18, 106, 6),
(19, 106, 5),
(20, 106, 5),
(21, 106, 5),
(22, 106, 4),
(23, 106, 3),
(24, 106, 12),
(25, 106, 11),
(26, 106, 10),
(27, 106, 7),
(28, 106, 9),
(29, 106, 7),
(30, 106, 3),
(31, 106, 2),
(32, 106, 8),
(33, 106, 8),
(34, 106, 6),
(35, 106, 4),
(36, 106, 3),
(37, 106, 5)



INSERT INTO BOOK_LOANS VALUES
(1, 101, 1, '2017-03-04', '2017-03-25'),
(2, 106, 5, '2017-03-03', '2017-03-15'),
(3, 104, 4, '2017-03-02', '2017-03-23'),
(4, 102, 3, '2017-03-01', '2017-03-23'),
(5, 103, 2, '2017-03-04', '2017-03-23'),
(6, 104, 1, '2017-03-06', '2017-03-23'),
(7, 102, 2, '2017-03-07', '2017-03-23'),
(8, 101, 3, '2017-03-08', '2017-03-15'),
(9, 101, 4, '2017-03-07', '2017-03-15'),
(10, 102, 5, '2017-03-02', '2017-03-15'),
(11, 103, 4, '2017-03-03', '2017-03-15'),
(12, 104, 3, '2017-03-01', '2017-03-14'),
(13, 105, 2, '2017-03-01', '2017-03-14'),
(14, 101, 3, '2017-03-01', '2017-03-14'),
(15, 106, 4, '2017-03-01', '2017-03-14'),
(16, 107, 5, '2017-03-04', '2017-03-14'),
(17, 105, 5, '2017-03-01', '2017-03-14'),
(18, 103, 4, '2017-03-01', '2017-03-13'),
(19, 103, 7, '2017-03-03', '2017-03-12'),
(19, 104, 4, '2017-03-03', '2017-03-12'),
(19, 105, 3, '2017-03-03', '2017-03-13'),
(19, 103, 3, '2017-03-03', '2017-03-12'),
(20, 102, 2, '2017-03-03', '2017-03-11'),
(21, 101, 2, '2017-03-03', '2017-03-11'),
(22, 102, 2, '2017-03-01', '2017-03-11'),
(23, 101, 3, '2017-03-01', '2017-03-12'),
(24, 104, 2, '2017-03-01', '2017-03-12'),
(25, 105, 10, '2017-03-01', '2017-03-13'),
(26, 103, 10, '2017-03-03', '2017-03-13'),
(27, 101, 10, '2017-03-05', '2017-03-13'),
(28, 102, 10, '2017-03-05', '2017-03-13'),
(29, 102, 10, '2017-03-06', '2017-03-13'),
(30, 102, 10, '2017-03-07', '2017-03-10'),
(31, 101, 10, '2017-03-07', '2017-03-10'),
(32, 103, 7, '2017-03-07', '2017-03-10'),
(33, 103, 7, '2017-03-06', '2017-03-10'),
(34, 104, 5, '2017-03-07', '2017-03-10'),
(35, 105, 6, '2017-03-07', '2017-03-10'),
(36, 106, 6, '2017-03-07', '2017-03-10'),
(37, 106, 6, '2017-03-07', '2017-03-15'),
(4, 106, 5, '2017-03-05', '2017-03-15'),
(5, 104, 4, '2017-03-03', '2017-03-15'),
(4, 104, 4, '2017-03-02', '2017-03-15'),
(3, 103, 1, '2017-03-02', '2017-03-15'),
(2, 101, 4, '2017-03-01', '2017-03-25'),
(4, 101, 2, '2017-03-01', '2017-03-25'),
(6, 101, 2, '2017-03-01', '2017-03-25'),
(14, 101, 2, '2017-03-01', '2017-03-25'),
(15, 101, 1, '2017-03-03', '2017-03-25'),
(13, 103, 3, '2017-03-04', '2017-03-25'),
(23, 104, 2, '2017-03-03', '2017-03-11'),
(26, 105, 3, '2017-03-04', '2017-03-14'),
(35, 106, 5, '2017-03-03', '2017-03-12'),
(31, 106, 10, '2017-03-01', '2017-03-20'),
(32, 102, 10, '2017-03-01', '2017-03-10')


SELECT * FROM LIBRARY_BRANCH

SELECT * FROM BORROWER

SELECT * FROM BOOK AS B INNER JOIN BOOK_AUTHORS AS A ON B.BookID=A.BookID
INNER JOIN PUBLISHER AS P ON B.PublisherName=P.Name

SELECT COUNT(*) from BOOK_LOANS
GROUP BY CardNo


-- Question 1
SELECT B.Title, L.BranchName, C.NoOfCopies FROM BOOK AS B INNER JOIN BOOK_COPIES AS C ON B.BookID=C.BookID
INNER JOIN LIBRARY_BRANCH AS L ON L.BranchID=C.BranchID
WHERE B.Title='The Lost Tribe' AND L.BranchName='Sharpstown'


--Question 2
SELECT B.Title, L.BranchName, C.NoOfCopies FROM BOOK AS B INNER JOIN BOOK_COPIES AS C ON B.BookID=C.BookID
INNER JOIN LIBRARY_BRANCH AS L ON L.BranchID=C.BranchID
WHERE B.Title='The Lost Tribe'


--Question 3
SELECT * FROM BORROWER LEFT OUTER JOIN BOOK_LOANS ON BORROWER.CardNo=BOOK_LOANS.CardNo
WHERE BOOK_LOANS.BookID IS NULL


--Question 4
SELECT BOOK.Title, B.Name, B.BorrowerAddress FROM BOOK_LOANS AS BL INNER JOIN BORROWER AS B ON BL.CardNo=B.CardNo
INNER JOIN LIBRARY_BRANCH AS LB ON LB.BranchID=BL.BranchID
INNER JOIN BOOK ON BOOK.BookID=BL.BookID
WHERE BL.DueDate='2017-03-10'
AND LB.BranchName='Sharpstown'


--Question 5
SELECT LB.BranchName, COUNT(BL.BookID) AS 'Checked Out' FROM BOOK_LOANS AS BL INNER JOIN LIBRARY_BRANCH AS LB ON BL.BranchID=LB.BranchID
GROUP BY LB.BranchName


--Question 6
SELECT B.Name, B.BorrowerAddress, B.Phone, COUNT(BL.BookID) AS 'Checked Out' FROM BORROWER AS B INNER JOIN BOOK_LOANS AS BL ON B.CardNo=BL.CardNo
GROUP BY B.Name, B.BorrowerAddress, B.Phone HAVING COUNT(BL.BookID) > 5



--Question 7
SELECT BOOK.Title, BC.NoOfCopies FROM BOOK INNER JOIN BOOK_AUTHORS AS BA ON BOOK.BookID=BA.BookID
INNER JOIN BOOK_COPIES AS BC ON BOOK.BookID=BC.BookID
INNER JOIN LIBRARY_BRANCH AS LB ON LB.BranchID=BC.BranchID
WHERE BA.AuthorName='Stephen King' AND LB.BranchName='Central'



--Stored Procedure
CREATE PROC CountBooksAtBranches @BookTitle varchar(50), @Branch varchar(50)
AS
	SELECT * FROM BOOK AS B INNER JOIN BOOK_COPIES AS C ON B.BookID=C.BookID
	INNER JOIN LIBRARY_BRANCH AS L ON L.BranchID=C.BranchID
	WHERE B.Title=@BookTitle AND L.BranchName=@Branch


EXEC CountBooksAtBranches 'The Lost Tribe', 'Sharpstown'



--Second Stored Procedure
ALTER PROC BooksDueOnDateAndPlace @DueDate DATE, @Branch varchar(50)
AS

	SELECT BOOK.Title, B.Name, B.BorrowerAddress FROM BOOK_LOANS AS BL INNER JOIN BORROWER AS B ON BL.CardNo=B.CardNo
	INNER JOIN LIBRARY_BRANCH AS LB ON LB.BranchID=BL.BranchID
	INNER JOIN BOOK ON BOOK.BookID=BL.BookID
	WHERE BL.DueDate=@DueDate
	AND LB.BranchName=@Branch



EXEC BooksDueOnDateAndPlace '2017-03-10', 'Sharpstown'