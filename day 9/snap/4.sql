select username from users
where "id" in (
    SELECT to_user_id as username  FROM messages
    GROUP BY to_user_id
    ORDER BY count(*) DESC
    limit 1
);
