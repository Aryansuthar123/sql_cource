-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it
CREATE TABLE songs(
    "song_id" integer,
    "name" varchar(20),
    "album_id" integer,
    "lonch_date" date,
    primary key("song_id")
    FOREIGN KEY("album_id") references albums(album_id)
);

CREATE TABLE artists(
    "artist_id" integer,
    "name" varchar(20),
    "Birth_date" date,
    "birth_country" text,
    PRIMARY KEY("artist_id")
);
CREATE TABLE albums(
    "album_id" integer primary key AUTOINCREMENT,

    "name" varchar(20),
    "artist_id" integer,

    foreign key("artist_id") references artists(artist_id)
);
CREATE TABLE playlists(
    "playlist_id" integer,
    "name" text,
    created_at DATE DEFAULT (DATE('now')),
    primary key(playlist_id)
);
CREATE TABLE playlist_song(
    "playlist_id" integer,
    "song_id" integer,
    PRIMARY KEY(playlist_id, song_id)
    foreign key(playlist_id) references playlists(playlist_id)
    foreign key(song_id) references songs(song_id)
)

CREATE INDEX idx_songs_album_id
ON songs(album_id);

CREATE INDEX idx_artists_name
ON artists(name);

CREATE INDEX idx_albums_artist_id
ON albums(artist_id)
