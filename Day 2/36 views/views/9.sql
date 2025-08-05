SELECT "english_title", "artist" FROM "views"
where "brightness" = ( SELECT
  MAX(brightness)
    FROM "views"
    );

