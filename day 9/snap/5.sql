select "friend_id" from "friends"
where "user_id" in (
    select "id" from users
    where username = "lovelytrust487"
)
INTERSECT
select "friend_id" from "friends"
where "user_id" in (
    select "id" from users
    where username = "exceptionalinspiration482"
)
