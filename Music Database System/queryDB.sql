SELECT Song_Name 
FROM ((((
	Post_Album JOIN Person ON Post_Album.Person_ID = Person.Person_ID)
			   JOIN Album ON Album.Album_ID = Post_Album.Album_ID)
			   JOIN Contain ON Contain.Album_ID = Album.Album_ID)
			   JOIN Song ON Song.Song_ID = Contain.Song_ID)
WHERE Person_Name = 'Taylor Swift'
ORDER BY Album_Date DESC LIMIT 1;

SELECT * 
FROM (((
	Feedback NATURAL JOIN Have_Song)
			 NATURAL JOIN Song)
			 NATURAL JOIN Person)
WHERE Person_Name = '周杰伦'
ORDER BY Quantity DESC LIMIT 1;

SELECT Tune 
FROM Melody 
WHERE Song_ID = (SELECT Song_ID 
				 FROM Song 
				 WHERE Song_name='12 Variations on "Ah, vous dirai-je maman", K.265/300e');

SELECT * 
FROM (((((
	Album NATURAL JOIN Post_Album)
		  NATURAL JOIN Song)
		  NATURAL JOIN Contain)
	      NATURAL JOIN Have_Song)
	      NATURAL JOIN Person)
WHERE Birthday < (SELECT (to_char(now() - interval '30 years', 'YYYY-MM-DD HH24:MI:SS'))::date) 
AND Gender = 'F' AND Nationality = 'USA' AND Album_Date = (SELECT Album_Date 
														   FROM Album 
														   ORDER BY Album_Date DESC LIMIT 1);

SELECT * 
FROM (Person 
	  NATURAL JOIN Award)
WHERE Award_Name 
LIKE '%Grammy%' AND Gender='M' 
AND Award_Date::timestamp - Birthday::timestamp < '30 years'
AND Award_Date::timestamp - Birthday::timestamp > '20 years';

SELECT * 
FROM (((
	Person NATURAL JOIN Song)
	       NATURAL JOIN Melody)
	       NATURAL JOIN Have_Song)
WHERE Person_Name = 'Michael Jackson' AND Medoly_Style LIKE '%rock%';

SELECT Comment_Content 
FROM (((
	Song_Comment NATURAL JOIN Song)
	             NATURAL JOIN Have_Song)
				 NATURAL JOIN Person)
WHERE Person_Name = 'Christina Perri' AND Song_Name = 'A Thousand Years';

SELECT Lyric_Content 
FROM Lyric 
WHERE Song_ID IN (SELECT Song_ID FROM Song WHERE Song_Name='My Heart Will Go On');

SELECT * 
FROM (((
	Song NATURAL JOIN Play_Song)
		 NATURAL JOIN Feedback)
		 NATURAL JOIN Lyric)
WHERE Instrument = 'piano' AND Lyric_Content = '' AND Quantity > 1000;

SELECT Song_Name, Comment_Content 
FROM (Song NATURAL JOIN Song_Comment)
WHERE Author = 'skatsira';

SELECT Song_Name, length(Song_Name) 
FROM ((
	Song NATURAL JOIN Have_Song)
	     NATURAL JOIN Person) 
WHERE Person_name='Ed Sheeran';

SELECT Lyric_Content 
FROM Lyric 
WHERE Lyric.Song_ID IN (SELECT Song_ID 
					   FROM Song 
					   WHERE Song_Name='Perfect');

SELECT Person_ID, Birthday
FROM Person WHERE Person_Name = '许嵩';

SELECT Person.Person_Name, Have_Song.Person_ID
FROM Person, Have_Song
WHERE Person.Person_ID = Have_Song.Person_ID
AND Song_ID = 'S00001';

SELECT Person.Person_Name, Have_Song.Person_ID
FROM Person, Song, Have_Song
WHERE Person.Person_ID = Have_Song.Person_ID
AND Have_Song.Song_ID = Song.Song_ID
AND Song.Song_Name = '有何不可';

SELECT Person_Name
FROM Person
WHERE Person_ID = 'P00001'
OR Person_ID = 'P00002';

SELECT Person.Person_ID
FROM person, Have_Song, Song
WHERE Person.Person_ID = Have_Song.Person_ID
AND Song.Song_ID = 'S00001'
AND Have_Song.song_ID = 'S00002';

SELECT Song_Name
FROM Song 
WHERE Song_ID = 'S00001';