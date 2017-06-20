create database db_FD;
go

use db_FD;

use db_mine;

drop database db_FD; 

--ALL TABLES

--START publisher

create table tbl_Publisher(
	publisher_Name varchar(111) primary key not null,
	publisher_Address varchar(111) not null,
	publisher_Phone varchar(111) not null
);

insert into tbl_Publisher
	(publisher_Name, publisher_Address, publisher_Phone)
	values
	('Penguin','Anchorage, AL' ,'101-123-1234'),
	('Rosenwald','Biloxi, MS' ,'202-232-3131'),
	('Harper and Brothers','Cleveland, OH' ,'303-313-3131'),
	('John P. Jewett and Company','Dayton, OH' ,'404-404-4040'),
	('Ticknor and Fields','Excelsior, ME' ,'505-505-5050'),
	('Elliot, Thomes & Talbot','Fresno, CA' ,'606-606-6060'),
	('Roberts Brothers','Gresham, OR' ,'707-707-7070'),
	('Loring','Harrisburg, PA', '808-808-8080'),
	('Chatto & Windus','Ithaca, NY' ,'909-909-9090'),
	('D. Appleton & Company','Juneau, AL' ,'101-010-0101'),
	('Random House', 'Klondike, AL', '202-020-0202'),
	('Knopf', 'Los Angeles, CA', '303-030-0303'),
	('Grossman', 'Miami, FL', '404-040-0404'),
	('Grove Press', 'New Orleans, LA', '505-050-0505'),
	('Harper & Row', 'Orlando, FL', '606-060-0606'),
	('Doubleday', 'Philadelphia, PA', '707-070-0707'),
	('Geo. M. Hill', 'Quahog, MA', '808-080-0808'),
	('Macmillan', 'Rosco, NM', '909-090-0909'),
	('Edgar Rice Burroughs Publishing Company', 'Salem, MA', '010-101-1010'),
	('Charles Scribers Sons', 'Toronto, ON', '020-135-1351'),
	('J.Cape and H. Smith', 'Union City, NJ', '030-743-9273'),
	('Simon and Schuster', 'Virginia Beach, VA', '404-746-8263'), 
	('J.B. Lippincott', 'Wasilla, AL', '505-837-9274'),
	('Viking Press', 'Xenia, OH', '606-926-5649'),
	('Scribners', 'Yonkers, NY', '707-027-6720'),
	('HarperCollins', 'Zyzzx, CA', '827-593-1038'),
	('New Directions', 'Austin, TX', '724-852-1343'),
	('Houghton Mifflin', 'Boston, MA', '824-829-5643'),
	('Jonathan Cape', 'Chicago, Ill', '516-163-7103')
;

--end Publisher

--START Book

create table tbl_Book (
	book_BookID int primary key not null IDENTITY (100,1),
	book_Title varchar (111) not null,
	book_PublisherName varchar(111) not null
	constraint fk_booktopublisher foreign key references tbl_Publisher(publisher_Name) 
	on update cascade on delete cascade
);

insert into tbl_Book
	(book_Title, book_PublisherName)
	values
	('The Lost Tribe','Penguin'), 
	('The Scarlet Letter', 'Rosenwald'), 
	('Moby Dick','Harper and Brothers'),
	('Uncle Toms Cabin', 'John P. Jewett and Company'),
	( 'Walden', 'Ticknor and Fields'),
	('Leaves of Grass','Penguin'),
	('The Mysterious Key','Elliot, Thomes & Talbot'),
	('Little Women','Roberts Brothers'),
	('Mark, the Match Boy','Loring'),
	('Adventures of Huckleberry Finn','Chatto & Windus'),

	('Poems','Roberts Brothers'),
	('How the Other Half Lives','Penguin'),
	('The Red Badge of Courage','D. Appleton & Company'),
	('Cosmos','Random House'),
	('Beloved','Knopf'),
	('In Cold Blood','Random House'),
	('Unsafe at Any Speed','Grossman'),
	('the Autobiography of Malcolm X','Grove Press'),
	('Where the Wild Things Are','Harper & Row'),
	('Carrie','Doubleday'),

	('The Wonderful Wizard of Oz','Geo. M. Hill'), 
	('The Call of the Wild', 'Macmillan'),
	('The Jungle', 'Doubleday'),
	('Tarzan of the Apes', 'Edgar Rice Burroughs Publishing Company'),
	('The Great Gatsby', 'Charles Scribers Sons'),
	('The Sound and the Fury', 'J.Cape and H. Smith'),
	('Gone With the Wind', 'Macmillan'),
	('How to Win Friends and Influence Poeple', 'Simon and Schuster'),
	('Their Eyes Were Watching God', 'J.B. Lippincott'),
	('The Grapes of Wrath', 'Viking Press'),

	('For Whom the Bell Tolls', 'Scribners'),
	('A Tree Grows in Brooklyn', 'Harper and Brothers'),
	('Goodnight Moon', 'HarperCollins'),
	('A Streetcar Named Desire', 'New Directions'),
	('Silent Spring', 'Houghton Mifflin'),
	('Catch-22', 'Jonathan Cape'),
	('To Kill a Mockingbird', 'J.B. Lippincott'), 
	('On The Road', 'Viking Press'),
	('The Cat in the Hat', 'Random House'), 
	('Atlas Shrugged', 'Random House') 
;

--end Book

--START BookAuthors

create table tbl_BookAuthors(
	ba_BookID int not null 
	constraint fk_authorstobook foreign key references tbl_book(Book_BookID) 
	on update cascade on delete cascade,
	ba_AuthorName varchar(111) not null
);

insert into tbl_BookAuthors
	(ba_BookID, ba_AuthorName)
	values
	(100,'Sara Carter'),
	(101, 'Nathaniel Hawthorne'), 
	(102,'Herman Melville'), 
	(103, 'Harriet Beecher Stowe'),
	(104, 'Henry Thoreau'),
	(105,'Walt Whitman'),
	(106,'Louisa May Alcott'),
	(107,'Louisa May Alcott'),
	(108,'Horatio Alger Jr'),
	(109,'Mark Twain'),

	(110,'Emily Dickinson'),
	(111,'Jacob Riis'),
	(112,'Stephen Crane'),
	(113,'Carl Sagan'),
	(114,'Toni Morrison'),
	(115,'Truman Capote'),
	(116,'Ralph Nader'),
	(117,'Malcolm X, Alex Haley'),
	(118,'Maurice Sendak'),
	(119,'Stephen King'),

	(120, 'Frank Baum'),
	(121, 'Jack London'),
	(122, 'Upton sinclair'),
	(123, 'Edgar Rice Burroughs'),
	(124, 'F.Scott Fitzgerald'),
	(125, 'William Faulkner'),
	(126, 'Margaret Mitchell'),
	(127, 'Dale Carnegie'),
	(128, 'Zora Neale Hurston'),
	(129, 'John Steinbeck'),

	(130, 'Ernest Hemingway'),
	(131, 'Betty Smith'),
	(132, 'Margaret Wise Brown'),
	(133, 'Tennessee Williams'),
	(134, 'Rachel Carson'),
	(135, 'Joseph Heller'),
	(136, 'Harper Lee'),
	(137, 'Jack Kerouac'),
	(138, 'Theodor Geisel'),
	(139, 'Ayn Rand')
;

--end BookAuthors

--START LibraryBranch

create table tbl_LibraryBranch(
	LB_BranchID int primary key not null identity(1,1),
	LB_BranchName varchar(111) not null, 
	LB_Address varchar(111) not null
);


insert into tbl_LibraryBranch
	(LB_BranchName, LB_Address)
	values
	('Sharpstown','310 SW 4th Avenue, #412, Portland, OR, 97204'),
	('Central','486 Arturo Coronado, Ushuaia, 9410, Argentina'),
	('Hollywood','14 Hollywood Blvd, Portland, OR, 97209'),
	('Milwaukie','29 Milwaukie Blvd, Portland, OR, 97201')
;

--end LibraryBranch

--START Borrower 

create table tbl_Borrower(
	borrower_CardNo int primary key not null identity(1000,1),
	borrower_Name varchar(22) not null, 
	borrower_Address varchar(22) not null, 
	borrower_Phone varchar(22) not null, 
);

insert into tbl_Borrower
	(borrower_Name, borrower_Address, borrower_Phone)
	values
	('Carl Winslow', '587 Pine St', '798-731-6392'),
	('Carlton Banks', '482 Sunset Blvd', '528-191-7264'),
	('Bob Gray', '29 Neibolt St', '638-027-4624'),
	('Marie Antoinette','470 Ringstrasse', '629-103-7362'),

	('Ned Flanders', '744 Evergreen Tr', '728-483-7929'),
	('Lisa Simpson', '742 Evergreen Tr', '728-749-2028'),
	('Lisbeth Salander', '573 Ankergrand', '482-028-4387'),
	('Daenerys Targaryen', '523 Winterfell', '629-204-7621')
;

--end Borrower

--START BookLoans 

create table tbl_BookLoans(
	BL_BookID int not null
	constraint fk_loanstobook foreign key references tbl_Book(book_BookID) 
	on update cascade on delete cascade,
	BL_BranchID int not null
	constraint fk_loanstolibrarybranch foreign key references tbl_LibraryBranch(LB_BranchID) 
	on update cascade on delete cascade,
	BL_CardNo int not null
	constraint fk_loanstoborrower foreign key references tbl_Borrower(borrower_CardNo) 
	on update cascade on delete cascade,
	BL_DateOut varchar(22) not null,
	BL_DueDate varchar(22) not null
);

insert into tbl_BookLoans
	(BL_BookID, BL_BranchID, BL_CardNo, BL_DateOut, BL_DueDate)
	values
	(100, 1, 1000, '06-01-17', '06-20-17'),
	(101, 1, 1001, '06-02-17', '06-21-17'),
	(102, 1, 1002, '06-03-17', '06-22-17'),
	(103, 1, 1003, '06-04-17', '06-23-17'),
	(104, 1, 1007, '06-05-17', '06-24-17'),
	(105, 1, 1000, '06-06-17', '06-25-17'),
	(106, 1, 1001, '06-07-17', '06-26-17'),
	(107, 1, 1002, '06-08-17', '06-27-17'),
	(108, 1, 1003, '06-09-17', '06-28-17'),
	(109, 1, 1007, '06-10-17', '06-29-17'),

	(110, 2, 1005, '06-11-17', '06-30-17'),
	(111, 2, 1006, '06-12-17', '07-01-17'),
	(112, 2, 1007, '06-13-17', '07-02-17'),
	(113, 2, 1000, '06-14-17', '07-03-17'),
	(114, 2, 1001, '06-15-17', '07-04-17'),
	(115, 2, 1002, '06-16-17', '07-05-17'),
	(116, 2, 1003, '06-17-17', '07-06-17'),
	(117, 2, 1004, '06-18-17', '07-07-17'),
	(118, 2, 1005, '06-19-17', '07-08-17'),
	(119, 2, 1006, '06-20-17', '07-09-17'), 

	(120, 3, 1007, '06-21-17', '07-10-17'),
	(121, 3, 1000, '06-22-17', '07-11-17'),
	(122, 3, 1001, '06-23-17', '07-12-17'),
	(123, 3, 1002, '06-24-17', '07-13-17'),
	(124, 3, 1007, '06-25-17', '07-14-17'),
	(125, 3, 1004, '06-26-17', '07-15-17'),
	(126, 3, 1005, '06-27-17', '07-16-17'),
	(127, 3, 1006, '06-28-17', '07-17-17'),
	(128, 3, 1007, '06-29-17', '07-18-17'),
	(129, 3, 1000, '06-30-17', '07-19-17'),

	(130, 4, 1001, '06-31-17', '07-20-17'),
	(131, 4, 1002, '07-01-17', '07-21-17'),
	(132, 4, 1007, '07-02-17', '07-22-17'),
	(133, 4, 1004, '07-03-17', '07-23-17'),
	(134, 4, 1005, '07-03-17', '07-24-17'),
	(135, 4, 1006, '07-03-17', '07-24-17'),
	(136, 4, 1007, '07-04-17', '07-25-17'),
	(137, 4, 1000, '07-05-17', '07-26-17'),
	(138, 4, 1001, '07-06-17', '07-27-17'),
	(139, 4, 1002, '07-07-17', '07-28-17'),

	(130, 1, 1007, '07-08-17', '07-29-17'),
	(131, 2, 1005, '07-09-17', '07-30-17'),
	(132, 3, 1003, '07-10-17', '07-31-17'),
	(133, 4, 1001, '07-11-17', '08-01-17'),
	(134, 1, 1006, '07-12-17', '08-02-17'),
	(135, 2, 1004, '07-13-17', '08-03-17'),
	(136, 3, 1002, '07-14-17', '08-04-17'),
	(137, 4, 1000, '07-15-17', '08-05-17'),
	(138, 1, 1007, '07-16-17', '08-06-17'),
	(139, 2, 1006, '07-17-17', '08-07-17')
;

--end BookLoans

--START BookCopies

create table tbl_BookCopies(
	BC_BookID int not null 	
	constraint fk_bctob foreign key references tbl_Book(book_BookID) 
	on update cascade on delete cascade,
	BC_BranchID int not null
	constraint fk_bctolb foreign key references tbl_LibraryBranch(LB_BranchID) 
	on update cascade on delete cascade,
	BC_NoOfCopies int not null
);

insert into tbl_BookCopies
	(BC_BookID, BC_BranchID, BC_NoOfCopies)
	values
	(100, 1, 3),
	(101, 1, 5),
	(102, 1, 7),
	(103, 1, 9),
	(104, 1, 31),
	(105, 1, 11),
	(106, 1, 17),
	(107, 1, 19),
	(108, 1, 23),
	(109, 1, 29),

	(110, 2, 2),
	(111, 2, 4),
	(112, 2, 8),
	(113, 2, 16),
	(114, 2, 32),
	(115, 2, 64),
	(116, 2, 128),
	(117, 2, 256),
	(118, 2, 512),
	(119, 2, 1024), 

	(120, 3, 4),
	(121, 3, 8),
	(122, 3, 4),
	(123, 3, 12),
	(124, 3, 4),
	(125, 3, 16),
	(126, 3, 4),
	(127, 3, 32),
	(128, 3, 4),
	(129, 3, 64),

	(130, 4, 4),
	(131, 4, 97),
	(132, 4, 4),
	(133, 4, 93),
	(134, 4, 4),
	(135, 4, 91),
	(136, 4, 4),
	(137, 4, 89),
	(138, 4, 4),
	(139, 4, 87)
;

--end BookCopies

CREATE PROCEDURE FDQueries
AS
BEGIN 
/*
1. How many copies of the book titled "The Lost Tribe" are owned 
by the library branch whose name is "Sharpstown"?
*/
	select tbl_BookCopies.BC_NoOfCopies
		from tbl_Book
		inner join tbl_BookCopies on tbl_Book.book_BookID=tbl_BookCopies.BC_BookID
		inner join tbl_LibraryBranch on tbl_BookCopies.BC_BranchID=tbl_LibraryBranch.LB_BranchID
	where tbl_Book.book_Title='The Lost Tribe' and tbl_LibraryBranch.LB_BranchName='Sharpstown'
	;
/*
2. How many copies of the book titled "The Lost Tribe" are owned 
by each library branch?
*/
	select LB_BranchName AS "Branch", sum(BC_NoOfCopies) as "#TheLostTribe"
		from tbl_LibraryBranch a1
		inner join tbl_BookCopies a2 on a1.LB_BranchID = a2.BC_BranchID
		inner join tbl_Book a3 on BC_BookID = a3.book_BookID
		where book_Title='The Lost Tribe'
		group by LB_BranchName
	;
/*
3. Retrieve the names of all borrowers who do not have any books
 checked out.
*/
	select a1.borrower_Name, count(a2.BL_CardNo) AS "#OfBooksBorrowed"
		from tbl_Borrower a1
		inner join tbl_BookLoans a2 on a1.borrower_CardNo = a2.BL_CardNo
		group by a1.borrower_Name
		having count(a2.BL_CardNo)=0
	;

	--everyone's borrowed a book

/*
4. For each book that is loaned out from the "Sharpstown" branch
 and whose DueDate is today, retrieve the book title, the
  borrower's name, and the borrower's address.
*/
	SELECT book_Title, borrower_Name, borrower_Address
		from tbl_Borrower a1
		inner join tbl_BookLoans a2 on a2.BL_CardNo = a1.borrower_CardNo
		inner join tbl_Book a3 on a2.BL_BookID = a3.book_BookID 
		inner join tbl_LibraryBranch a4 on a2.BL_BranchID = a4.LB_BranchID
		WHERE LB_BranchName='Sharpstown' and BL_DueDate = '06-20-17'
	;
/*
5. For each library branch, retrieve the branch name and the total
 number of books loaned out from that branch.
*/
	SELECT LB_BranchName as "Branch:", count(BL_BookID) as "#OfBooksLoanedFromBranch"
	   from tbl_BookLoans a1
		inner join tbl_LibraryBranch a2 on a1.BL_BranchID = a2.LB_BranchID
		group by LB_BranchName
	;
/*
6. Retrieve the names, addresses, and number of books checked out
 for all borrowers who have more than five books checked out. 
*/


	SELECT a1.borrower_Name, count(a2.BL_CardNo) AS "Number Of Loans"
	FROM tbl_BookLoans as a2 
	inner join tbl_Borrower as a1 on a1.borrower_CardNo =  a2.BL_CardNo
	group by a1.borrower_Name
	HAVING count(a2.BL_CardNo) > 5
	;

/*
7. For each book authored (or co-authored) by "Stephen King",
 retrieve the title and the number of copies owned by the library branch whose name is "Central".
*/
	SELECT book_Title as 'Book title', BC_NoOfCopies as '# of copies', 
		LB_BranchName as 'Branch Name'
		from tbl_Book a1
	inner join tbl_BookCopies a4 on a1.book_BookID = a4.BC_BookID
	inner join tbl_LibraryBranch a3 on a4.BC_BranchID = a3.LB_BranchID
	inner join tbl_BookAuthors a2 on a1.book_BookID = a2.ba_BookID
		WHERE BA_AuthorName='Stephen King' and LB_BranchName='Central'
	;


END