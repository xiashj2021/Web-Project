CREATE DATABASE Group_B14;

-- create the Person table
CREATE TABLE Person
(
Person_ID CHAR(6) NOT NULL,
Person_Name VARCHAR(50) NOT NULL,
Gender CHAR(1) CHECK (Gender='F' OR Gender='M'),
Birthday DATE NOT NULL,
Nationality CHAR(3) NOT NULL,
PRIMARY KEY (Person_ID)
);

-- create the Award table
CREATE TABLE Award
(
Person_ID CHAR(6),
Award_Name VARCHAR(80),
Song_Name VARCHAR(50),
Album_Name VARCHAR(50),
Award_Date DATE,
FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID)
);

-- create the Performer table
CREATE TABLE Performer
(
Person_ID CHAR(6) NOT NULL,
PRIMARY KEY (Person_ID)
);

-- create the Singer table
CREATE TABLE Singer
(
Person_ID CHAR(6) NOT NULL,
PRIMARY KEY (Person_ID)
);

-- create the Song table
CREATE TABLE Song
(
Song_ID CHAR(6) NOT NULL,
Song_Name VARCHAR(80) NOT NULL,
Duration REAL NOT NULL,
PRIMARY KEY (Song_ID)
);

-- create the Play_Song table
CREATE TABLE Play_Song
(
Song_ID CHAR(6),
Person_ID CHAR(6) NOT NULL,
Song_Style VARCHAR(90),
Instrument VARCHAR(90),
FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID), 
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID)
);

-- create the Have_Song table
CREATE TABLE Have_Song
(
Song_ID CHAR(6),
Person_ID CHAR(6),
Group_Name VARCHAR(60),
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID),
FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID)
);

-- create the Album table
CREATE TABLE Album
(
Album_ID CHAR(6) NOT NULL,
Album_Name VARCHAR(50) NOT NULL,
Album_Date DATE NOT NULL,
PRIMARY KEY (Album_ID)
);

-- create the Post_Album table
CREATE TABLE Post_ALbum
(
Album_ID CHAR(6),
Record_Label_Name VARCHAR(50) NOT NULL,
Person_ID CHAR(6) NOT NULL,
FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID)
);

-- create the Contain table
CREATE TABLE Contain
(
Album_ID CHAR(6) NOT NULL,
Song_ID CHAR(6) NOT NULL,
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID),
FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID)
);

-- create the Feedback table
CREATE TABLE Feedback
(
Song_ID CHAR(6) NOT NULL,
Quantity INTEGER NOT NULL,
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID)
);

-- create the Song_Comment table
CREATE TABLE Song_Comment
(
Song_ID CHAR(6) NOT NULL,
Number_ID INTEGER,
Author VARCHAR(50),
Comment_Content VARCHAR(10000),
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID)
);

-- create the Melody table
CREATE TABLE Melody
(
Song_ID CHAR(6) NOT NULL,
Medoly_Style VARCHAR(90) NOT NULL,
Tune VARCHAR(10) NOT NULL,
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID)
);

-- create the Lyric table
CREATE TABLE Lyric
(
Song_ID CHAR(6) NOT NULL,
Lyric_Content VARCHAR(10000),
FOREIGN KEY (Song_ID) REFERENCES Song(Song_ID)
);
