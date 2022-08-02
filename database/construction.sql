CREATE DATABASE LIBRARY;

USE LIBRARY;

-- CREATE TABLE ACCOUNT (
--     account_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     username VARCHAR(12) NOT NULL UNIQUE,
--     password VARCHAR(256) NOT NULL
-- );

CREATE TABLE ACCOUNT (
    account_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(12) NOT NULL UNIQUE,
    password VARCHAR(256) NOT NULL
);

-- CREATE TABLE EMPLOYEE (
--     employee_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     account_id INT NOT NULL,
--     FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
-- );

CREATE TABLE EMPLOYEE (
    employee_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
);

-- next statement ok
CREATE TABLE LIBRARIAN (
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);

-- next statement ok
CREATE TABLE BURSAR (
    employee_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES EMPLOYEE(employee_id)
);

-- next statement ok
CREATE TABLE EMPLOYEE_ACCOUNT (
    account_id INT NOT NULL,
    FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
);

-- CREATE TABLE STUDENT_ACCOUNT (
--     account_id INT NOT NULL,
--     FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
-- );

CREATE TABLE STUDENT_ACCOUNT (
    account_id INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (account_id) REFERENCES ACCOUNT(account_id)
);

-- CREATE TABLE LIBRARY_ASSETS (
--     order_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     due_date_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

CREATE TABLE LIBRARY_ASSETS (
    order_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    due_date_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- CREATE TABLE FINING_SYSTEM (
--     fine_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     order_id INT NOT NULL,
--     fee SMALLINT NOT NULL DEFAULT 0,
--     FOREIGN KEY (order_id) REFERENCES LIBRARY_ASSETS(order_id)
-- );

CREATE TABLE FINING_SYSTEM (
    fine_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    order_id INT NOT NULL,
    fee SMALLINT NOT NULL DEFAULT 0,
    FOREIGN KEY (order_id) REFERENCES LIBRARY_ASSETS(order_id)
);

-- CREATE TABLE STUDENT (
--     student_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(64) NOT NULL,
--     address VARCHAR(255) NOT NULL,
--     account_id INT NOT NULL,
--     rented_book INT NOT NULL DEFAULT 0,
--     rented_study_room INT NOT NULL DEFAULT 0,
--     rented_device INT NOT NULL DEFAULT 0,
--     FOREIGN KEY (account_id) REFERENCES STUDENT_ACCOUNT(account_id)
-- );

CREATE TABLE STUDENT (
    student_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(64) NOT NULL,
    address VARCHAR(255) NOT NULL,
    account_id INT NOT NULL,
    rented_book INT NOT NULL DEFAULT 0,
    rented_study_room INT NOT NULL DEFAULT 0,
    rented_device INT NOT NULL DEFAULT 0,
    FOREIGN KEY (account_id) REFERENCES STUDENT_ACCOUNT(account_id)
);

-- next statement ok
CREATE TABLE BORROWS_RETURNS (
    student_id INT NOT NULL,
    order_id INT NOT NULL,
    date_checked_out DATETIME NOT NULL,
    date_returned DATETIME NOT NULL,
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id),
    FOREIGN KEY (order_id) REFERENCES LIBRARY_ASSETS(order_id)
);

-- CREATE TABLE BOOK (
--     book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(255) NOT NULL,
--     author VARCHAR(255) NOT NULL,
--     physical_location VARCHAR(32) NOT NULL DEFAULT 'Ask Librarian',
--     publisher VARCHAR(255) NOT NULL,
--     subject VARCHAR(255) NOT NULL,
--     publication_date DATE NOT NULL,
--     language_written_in VARCHAR(2) NOT NULL DEFAULT 'en',
--     ISBN_13 VARCHAR(13) NOT NULL UNIQUE,
--     is_rented BOOLEAN NOT NULL DEFAULT false
-- );

CREATE TABLE BOOK (
    book_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    physical_location VARCHAR(32) NOT NULL DEFAULT 'Ask Librarian',
    publisher VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    publication_date DATE NOT NULL,
    language_written_in VARCHAR(2) NOT NULL DEFAULT 'en',
    ISBN_13 VARCHAR(13) NOT NULL UNIQUE,
    is_rented BIT NOT NULL DEFAULT 0
);

-- CREATE TABLE STUDY_ROOM (
--     room_no INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     is_rented BOOLEAN NOT NULL DEFAULT false
-- );

CREATE TABLE STUDY_ROOM (
    room_no INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    is_rented BIT NOT NULL DEFAULT 0
);

-- CREATE TABLE DEVICE (
--     device_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
--     type VARCHAR(128) NOT NULL DEFAULT "Unknown",
--     is_rented BOOLEAN NOT NULL DEFAULT false
-- );

CREATE TABLE DEVICE (
    device_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    type_col VARCHAR(128) NOT NULL DEFAULT 'Unknown',
    is_rented BIT NOT NULL DEFAULT 0
);