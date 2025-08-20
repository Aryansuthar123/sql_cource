-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

insert into songs( name, album_id, lonch_date)
VALUES('Shape of You', 1,'1999-03-02'),
    ('Blinding Lights', 2, '2020-01-02'),
    ('Levitating',  3, '2010-12-21'),
    ('Peaches',  4, '1934-08-18'),
    ('Stitches',5 ,'1803-11-14'),
    ('Havana',6 ,'2025-04-25'),
    ('Bad Guy',7, '2022-12-21'),
    ('Rolling in the Deep',  8, '2015-05-05'),
    ('Perfect' ,1, '2000-04-12'),
    ('Thinking Out Loud', 1, '1998-09-10'),
    ('Save Your Tears', 2,  '2019-03-05'),
    ('Don’t Start Now',  3, '2011-11-10'),
    ('Sorry',  4, '1933-05-13'),
    ('Baby', 4,  '1935-08-28'),
    ('Senorita',5, '1804-03-29'),
    ('Senorita (with Shawn Mendes)' , 6,  '2024-05-04'),
    ('Lovely (with Khalid)', 7, '2023-01-01'),
    ('Someone Like You',8, '2016-06-23'),
    ('Bad Habits', 1, '1999-05-24'),
    ('Starboy', 2, '2020-07-07'),
    ('Can’t Feel My Face', 2, '2018-04-19'),
    ('New Rules',3, '2012-12-06'),
    ('One Kiss (with Calvin Harris)', 3,'2009-04-25'),
    ('Love Yourself',  4, '1937-03-15'),
    ('Treat You Better' , 5, '1805-05-23'),
    ('Don’t Go Yet',  6,'2024-12-30' ),
    ('Happier Than Ever',7,'2023-02-25'),
    ('Hello' , 8,'2016-12-23'),
    ('Easy On Me',  8,  '2017-12-03')

;

insert into artists(name, Birth_date, birth_country)
VALUES('Ed Sheeran',' 1980-03-18', 'United Kingdom (England)' ),
    ('The Weeknd', '2000-04-12','The Weeknd' ),
    ('Dua Lipa', '1999-09-27', 'United Kingdom (England)'),
    ('Justin Bieber', '1915-10-24', 'Canada'),
    ('Shawn Mendes', '1795-02-14','Canada' ),
    ('Camila Cabello', '2010-03-23', 'Cuba'),
    ('Billie Eilish', '2004-03-27', 'United States'),
    ('Adele' , '1998-04-13', 'United Kingdom (England)');

insert into albums(album_id, name, artist_id)
    VALUES(1,'Divide', '1'),
        (2, 'After Hours',' 2'),
        (3,'25', '3'),
        (4,'Future Nostalgia', '4'),
        (5,'Justice','5'),
        (6,'Evolve' , '6'),
        (7,'Happier Than Ever','7'),
        (8,'24K Magic',' 8');

insert into playlists(playlist_id, name)
VALUES(1, 'Romantic Vibes'),
    (2, 'Party & Dance Hits'),
    (3, 'Chill & Late Night'),
    (4, 'Motivation & Energy'),
    (5, 'Heartbreak & Sad Hours');

insert into playlist_song(playlist_id, song_id)
VALUES(1,9),
    (1,10),
    (1, 15),
    (1, 24),
    (1, 18),
    (1, 29),
    (2, 3),
    (2, 12),
    (2, 20),
    (2, 21),
    (2, 13),
    (3, 11),
    (3, 17),
    (3, 29),
    (4, 1),
    (4, 2),
    (4, 25),
    (5, 8),
    (5 , 28),
    (5 , 7),
    (5, 27),
    (5, 14);

