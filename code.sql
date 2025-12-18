DROP DATABASE library;
CREATE DATABASE library;
use library;
CREATE TABLE USERS(
				    USER_ID INT PRIMARY KEY,
                    USER_NAME VARCHAR(30) NOT NULL,
                    ADDRESS VARCHAR(50) NOT NULL,
                    CONTACT CHAR(12) NOT NULL
);

CREATE TABLE BOOKS(
                    BOOK_CODE CHAR(6) PRIMARY KEY,
                    TITLE VARCHAR(50) NOT NULL,
                    AUTHOR_NAME VARCHAR(50) NOT NULL,
                    PUBLISHER VARCHAR(30),
                    ISBN BIGINT NOT NULL,
                    NUMBER_OF_COPIES INT,
                    EDITION CHAR(3) NOT NULL
);
CREATE TABLE CIRCULATION(
                          USER_ID INT NOT NULL,
                          BOOK_CODE CHAR(6) NOT NULL,
                          ISSUE_DATE DATE,
                          DUE_DATE DATE,
                          RETURN_DATE DATE
);

CREATE TABLE FINES(
                    USER_ID INT NOT NULL,
                    BOOK_CODE CHAR(6) NOT NULL DEFAULT '0',
                    AMOUNT INT,
                    REASON VARCHAR(30)
);

INSERT INTO USERS(USER_ID, USER_NAME, ADDRESS, CONTACT)
VALUES(1, 'Aarav Gupta', '123 Main St, Delhi', '123-456-7890'),
(2, 'Aanya Singh', '456 Oak Ave, Mumbai', '987-654-3210'),
(3, 'Advait Patel', '789 Elm St, Bangalore', '111-222-3333'),
(4, 'Ananya Reddy', '321 Pine St, Chennai', '444-555-6666'),
(5, 'Arnav Kumar', '567 Maple Ave, Kolkata', '777-888-9999'),
(6, 'Diya Sharma', '890 Cedar St, Hyderabad', '000-111-2222'),
(7, 'Ishaan Khan', '654 Birch Ave, Pune', '333-444-5555'),
(8, 'Ishani Desai', '987 Spruce St, Ahmedabad', '666-777-8888'),
(9, 'Kabir Joshi', '234 Oak St, Surat', '999-000-1111'),
(10, 'Miraya Malhotra', '876 Pine Ave, Jaipur', '222-333-4444'),
(11, 'Reyansh Singh', '543 Elm St, Lucknow', '555-666-7777'),
(12, 'Saisha Iyer', '210 Maple Ave, Kanpur', '888-999-0000'),
(13, 'Shaurya Choudhary', '678 Cedar St, Nagpur', '123-234-3456'),
(14, 'Suhana Ahuja', '901 Birch Ave, Indore', '456-567-6789'),
(15, 'Vihaan Bhatia', '345 Spruce St, Thane', '789-890-9012'),
(16, 'Anika Shah', '789 Oak St, Bhopal', '012-123-2345'),
(17, 'Arush Verma', '432 Pine Ave, Ludhiana', '345-456-5678'),
(18, 'Avni Rana', '567 Elm St, Patna', '678-789-8901'),
(19, 'Krisha Kumar', '876 Maple Ave, Vadodara', '901-012-1234'),
(20, 'Kian D Souza', '123 Cedar St, Varanasi', '234-345-4567'),
(21, 'Myra Chawla', '456 Birch Ave, Madurai', '567-678-7890'),
(22, 'Neil Nair', '789 Spruce St, Rajkot', '890-901-0123'),
(23, 'Nysa Menon', '234 Oak St, Jamnagar', '123-234-3456'),
(24, 'Pari Bajaj', '567 Pine Ave, Jabalpur', '456-567-6789'),
(25, 'Rian Banerjee', '890 Elm St, Moradabad', '789-890-9012'),
(26, 'Riya Ahluwalia', '345 Maple Ave, Gwalior', '012-123-2345'),
(27, 'Saanvi Mehra', '678 Cedar St, Jodhpur', '234-345-4567'),
(28, 'Shlok Goyal', '901 Birch Ave, Amritsar', '567-678-7890'),
(29, 'Vivaan Chowdhury', '234 Spruce St, Udaipur', '890-901-0123'),
(30, 'Yashvi Kapoor', '567 Oak St, Allahabad', '123-234-3456');

INSERT INTO BOOKS(BOOK_CODE, TITLE, AUTHOR_NAME, PUBLISHER, ISBN, NUMBER_OF_COPIES, EDITION)
VALUES('B001.1', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 5, '1st'),
('B001.2', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 5, '1st'),
('B001.3', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 5, '1st'),
('B001.4', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 5, '1st'),
('B001.5', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 5, '1st'),
('B002.1', 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780061120084', 3, '2nd'),
('B002.2', 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780061120084', 3, '2nd'),
('B002.3', 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780061120084', 3, '2nd'),
('B003.1', '1984', 'George Orwell', 'Secker & Warburg', '9780451524935', 2, '1st'),
('B003.2', '1984', 'George Orwell', 'Secker & Warburg', '9780451524935', 2, '1st'),
('B004.1', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780486284736', 4, '3rd'),
('B004.2', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780486284736', 4, '3rd'),
('B004.3', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780486284736', 4, '3rd'),
('B004.4', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780486284736', 4, '3rd'),
('B005.1', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', '9780316769488', 6, '1st'),
('B005.2', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', '9780316769488', 6, '1st'),
('B005.3', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', '9780316769488', 6, '1st'),
('B005.4', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', '9780316769488', 6, '1st'),
('B005.5', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', '9780316769488', 6, '1st'),
('B005.6', 'The Catcher in the Rye', 'J. D. Salinger', 'Little, Brown and Company', '9780316769488', 6, '1st'),
('B006.1', 'Animal Farm', 'George Orwell', 'Secker & Warburg', '9780451526342', 3, '2nd'),
('B006.2', 'Animal Farm', 'George Orwell', 'Secker & Warburg', '9780451526342', 3, '2nd'),
('B006.3', 'Animal Farm', 'George Orwell', 'Secker & Warburg', '9780451526342', 3, '2nd'),
('B007.1', 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '9780060850524', 2, '1st'),
('B007.2', 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '9780060850524', 2, '1st'),
('B008.1', 'The Hobbit', 'J.R.R. Tolkien', 'Allen & Unwin', '9780261102217', 5, '3rd'),
('B008.2', 'The Hobbit', 'J.R.R. Tolkien', 'Allen & Unwin', '9780261102217', 5, '3rd'),
('B008.3', 'The Hobbit', 'J.R.R. Tolkien', 'Allen & Unwin', '9780261102217', 5, '3rd'),
('B008.4', 'The Hobbit', 'J.R.R. Tolkien', 'Allen & Unwin', '9780261102217', 5, '3rd'),
('B008.5', 'The Hobbit', 'J.R.R. Tolkien', 'Allen & Unwin', '9780261102217', 5, '3rd'),
('B009.1', 'Fahrenheit 451', 'Ray Bradbury', 'Ballantine Books', '9781451673319', 3, '1st'),
('B009.2', 'Fahrenheit 451', 'Ray Bradbury', 'Ballantine Books', '9781451673319', 3, '1st'),
('B009.3', 'Fahrenheit 451', 'Ray Bradbury', 'Ballantine Books', '9781451673319', 3, '1st'),
('B010.1', 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '9780143124672', 4, '2nd'),
('B010.2', 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '9780143124672', 4, '2nd'),
('B010.3', 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '9780143124672', 4, '2nd'),
('B010.4', 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '9780143124672', 4, '2nd'),
('B011.1', 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780261103207', 5, '1st'),
('B011.2', 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780261103207', 5, '1st'),
('B011.3', 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780261103207', 5, '1st'),
('B011.4', 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780261103207', 5, '1st'),
('B011.5', 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780261103207', 5, '1st'),
('B012.1', 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', '9780140447934', 2, '2nd'),
('B012.2', 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', '9780140447934', 2, '2nd'),
('B013.1', 'The Odyssey', 'Homer', 'Penguin Classics', '9780140449112', 4, '1st'),
('B013.2', 'The Odyssey', 'Homer', 'Penguin Classics', '9780140449112', 4, '1st'),
('B013.3', 'The Odyssey', 'Homer', 'Penguin Classics', '9780140449112', 4, '1st'),
('B013.4', 'The Odyssey', 'Homer', 'Penguin Classics', '9780140449112', 4, '1st'),
('B014.1', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '9780060531041', 3, '3rd'),
('B014.2', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '9780060531041', 3, '3rd'),
('B014.3', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '9780060531041', 3, '3rd'),
('B015.1', 'The Divine Comedy', 'Dante Alighieri', 'Penguin Classics', '9780142437223', 2, '1st'),
('B015.2', 'The Divine Comedy', 'Dante Alighieri', 'Penguin Classics', '9780142437223', 2, '1st'),
('B016.1', 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934347', 4, '2nd'),
('B016.2', 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934347', 4, '2nd'),
('B016.3', 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934347', 4, '2nd'),
('B016.4', 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934347', 4, '2nd'),
('B017.1', 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Chatto & Windus', '9780143105947', 3, '1st'),
('B017.2', 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Chatto & Windus', '9780143105947', 3, '1st'),
('B017.3', 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Chatto & Windus', '9780143105947', 3, '1st'),
('B018.1', 'Hamlet', 'William Shakespeare', 'Penguin Classics', '9780141013071', 5, '3rd'),
('B018.2', 'Hamlet', 'William Shakespeare', 'Penguin Classics', '9780141013071', 5, '3rd'),
('B018.3', 'Hamlet', 'William Shakespeare', 'Penguin Classics', '9780141013071', 5, '3rd'),
('B018.4', 'Hamlet', 'William Shakespeare', 'Penguin Classics', '9780141013071', 5, '3rd'),
('B018.5', 'Hamlet', 'William Shakespeare', 'Penguin Classics', '9780141013071', 5, '3rd'),
('B019.1', 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780486454115', 4, '1st'),
('B019.2', 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780486454115', 4, '1st'),
('B019.3', 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780486454115', 4, '1st'),
('B019.4', 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780486454115', 4, '1st'),
('B020.1', 'The Iliad', 'Homer', 'Penguin Classics', '9780140447941', 6, '2nd'),
('B020.2', 'The Iliad', 'Homer', 'Penguin Classics', '9780140447941', 6, '2nd'),
('B020.3', 'The Iliad', 'Homer', 'Penguin Classics', '9780140447941', 6, '2nd'),
('B020.4', 'The Iliad', 'Homer', 'Penguin Classics', '9780140447941', 6, '2nd'),
('B020.5', 'The Iliad', 'Homer', 'Penguin Classics', '9780140447941', 6, '2nd'),
('B020.6', 'The Iliad', 'Homer', 'Penguin Classics', '9780140447941', 6, '2nd'),
('B021.1', 'Catch-22', 'Joseph Heller', 'Simon & Schuster', '9780684833392', 3, '1st'),
('B021.2', 'Catch-22', 'Joseph Heller', 'Simon & Schuster', '9780684833392', 3, '1st'),
('B021.3', 'Catch-22', 'Joseph Heller', 'Simon & Schuster', '9780684833392', 3, '1st'),
('B022.1', 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'Macmillan', '9780141439761', 5, '2nd'),
('B022.2', 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'Macmillan', '9780141439761', 5, '2nd'),
('B022.3', 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'Macmillan', '9780141439761', 5, '2nd'),
('B022.4', 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'Macmillan', '9780141439761', 5, '2nd'),
('B022.5', 'Alice''s Adventures in Wonderland', 'Lewis Carroll', 'Macmillan', '9780141439761', 5, '2nd'),
('B023.1', 'The Grapes of Wrath', 'John Steinbeck', 'The Viking Press', '9780143039433', 4, '1st'),
('B023.2', 'The Grapes of Wrath', 'John Steinbeck', 'The Viking Press', '9780143039433', 4, '1st'),
('B023.3', 'The Grapes of Wrath', 'John Steinbeck', 'The Viking Press', '9780143039433', 4, '1st'),
('B023.4', 'The Grapes of Wrath', 'John Steinbeck', 'The Viking Press', '9780143039433', 4, '1st'),
('B024.1', 'The Sound and the Fury', 'William Faulkner', 'Jonathan Cape', '9780679732242', 3, '3rd'),
('B024.2', 'The Sound and the Fury', 'William Faulkner', 'Jonathan Cape', '9780679732242', 3, '3rd'),
('B024.3', 'The Sound and the Fury', 'William Faulkner', 'Jonathan Cape', '9780679732242', 3, '3rd'),
('B025.1', 'Gone with the Wind', 'Margaret Mitchell', 'Macmillan Publishers', '9781416548942', 2, '1st'),
('B025.2', 'Gone with the Wind', 'Margaret Mitchell', 'Macmillan Publishers', '9781416548942', 2, '1st'),
('B026.1', 'The Sun Also Rises', 'Ernest Hemingway', 'Scribner', '9780743297332', 4, '2nd'),
('B026.2', 'The Sun Also Rises', 'Ernest Hemingway', 'Scribner', '9780743297332', 4, '2nd'),
('B026.3', 'The Sun Also Rises', 'Ernest Hemingway', 'Scribner', '9780743297332', 4, '2nd'),
('B026.4', 'The Sun Also Rises', 'Ernest Hemingway', 'Scribner', '9780743297332', 4, '2nd'),
('B027.1', 'Ulysses', 'James Joyce', 'Sylvia Beach', '9781840226355', 5, '1st'),
('B027.2', 'Ulysses', 'James Joyce', 'Sylvia Beach', '9781840226355', 5, '1st'),
('B027.3', 'Ulysses', 'James Joyce', 'Sylvia Beach', '9781840226355', 5, '1st'),
('B027.4', 'Ulysses', 'James Joyce', 'Sylvia Beach', '9781840226355', 5, '1st'),
('B027.5', 'Ulysses', 'James Joyce', 'Sylvia Beach', '9781840226355', 5, '1st'),
('B028.1', 'The Picture of Dorian Gray', 'Oscar Wilde', 'Ward, Lock and Company', '9780141439570', 3, '2nd'),
('B028.2', 'The Picture of Dorian Gray', 'Oscar Wilde', 'Ward, Lock and Company', '9780141439570', 3, '2nd'),
('B028.3', 'The Picture of Dorian Gray', 'Oscar Wilde', 'Ward, Lock and Company', '9780141439570', 3, '2nd'),
('B029.1', 'A Tale of Two Cities', 'Charles Dickens', 'Chapman & Hall', '9781853260391', 2, '1st'),
('B029.2', 'A Tale of Two Cities', 'Charles Dickens', 'Chapman & Hall', '9781853260391', 2, '1st'),
('B030.1', 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556', 4, '3rd'),
('B030.2', 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556', 4, '3rd'),
('B030.3', 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556', 4, '3rd'),
('B030.4', 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556', 4, '3rd');

INSERT INTO FINES(USER_ID, AMOUNT, REASON)
VALUES (23, 60, 'Late return'),
(15, 150, 'Damaged book'),
(3, 230, 'Lost book'),
(14, 80, 'Late return'),
(29, 320, 'Damaged book'),
(6, 700, 'Lost book'),
(15, 90, 'Late return'),
(26, 170, 'Damaged book'),
(8, 130, 'Lost book'),
(19, 30, 'Late return'),
(21, 250, 'Damaged book'),
(12, 950, 'Lost book');

INSERT INTO CIRCULATION (USER_ID, BOOK_CODE, ISSUE_DATE, DUE_DATE, RETURN_DATE) VALUES(27,'B010.1','2023-10-1','2023-10-14','2023-10-12'),
(12,'B025.1','2023-10-1','2023-10-14','2023-10-14'),
(9,'B003.1','2023-10-2','2023-10-15','2023-10-13'),
(21,'B010.1','2023-10-2','2023-10-15','2023-10-14'),
(27,'B010.1','2023-10-3','2023-10-16','2023-10-19'),
(27,'B010.2','2023-10-3','2023-10-16','2023-10-16'),
(15,'B014.1','2023-10-4','2023-10-17','2023-10-16'),
(3,'B011.1','2023-10-4','2023-10-17', NULL),
(27,'B010.1','2023-10-1','2023-10-24','2023-10-19'),
(1,'B012.1','2023-10-5','2023-10-18','2023-10-18'),
(14,'B028.1','2023-10-5','2023-10-18','2023-10-20'),
(12,'B013.1','2023-10-5','2023-10-18','2023-10-18'),
(2,'B023.1','2023-10-6','2023-10-19','2023-10-17'),
(29,'B016.1','2023-10-6','2023-10-19','2023-10-19'),
(6,'B014.1','2023-10-7','2023-10-20', NULL),
(20,'B016.2','2023-10-7','2023-10-20','2023-10-19'),
(15,'B024.1','2023-10-9','2023-10-22','2023-10-24'),
(29,'B010.3','2023-10-9','2023-10-22','2023-10-21');

CREATE VIEW USER_FINE AS
SELECT USERS.USER_ID, USERS.USER_NAME, USERS.CONTACT, SUM(FINES.AMOUNT) AS TOTAL_AMOUNT, CIRCULATION.BOOK_CODE, BOOKS.TITLE, CIRCULATION.ISSUE_DATE FROM CIRCULATION
JOIN USERS ON USERS.USER_ID=CIRCULATION.USER_ID
JOIN BOOKS ON BOOKS.BOOK_CODE=CIRCULATION.BOOK_CODE
JOIN FINES ON FINES.USER_ID=CIRCULATION.USER_ID
GROUP BY USERS.USER_ID,CIRCULATION.BOOK_CODE, CIRCULATION.ISSUE_DATE;

ALTER TABLE FINES
CHANGE REASON REASON_OF_FINE VARCHAR(20);

UPDATE BOOKS SET PUBLISHER='Scribner'
WHERE NUMBER_OF_COPIES<3
AND BOOK_CODE BETWEEN 'B001.1' AND 'B011.5';

DELETE FROM USERS WHERE USER_ID=21;

/*DROP TABLE USERS;
DROP TABLE BOOKS;
DROP TABLE CIRCULATION;
DROP TABLE FINES;
DROP DATABASE library;*/