-- Get details about a single user.
-- Select their id, name, email, and password.
-- Select a single user using their email address. Use tristanjacobs@gmail.com for now.

SELECT id, name, email, password
FROM users
WHERE email = 'tristanjacobs@gmail.com';



UPDATE properties
SET thumbnail_photo_url = 'https://images.pexels.com/photos/286744/pexels-photo-286744.jpeg?auto=compress&cs=tinysrgb&h=350'
WHERE title IN ('Stronger solution', 'Corner situation', 'Could word', 'Quietly single', 'Enjoy relationship');
