SELECT
    name,
    SUBSTRING(name, 0, POSITION(' ' in name)) as First_Name,
    TRIM(
        SUBSTRING(name, POSITION(' ' in name), LENGTH(name))
    ) as Last_Name
FROM
    users;
UPDATE
    users
set
    first_name = SUBSTRING(name, 0, POSITION(' ' in name)),
    last_name = TRIM(
        SUBSTRING(name, POSITION(' ' in name), LENGTH(name))
    );
	
SELECT * FROM users;
