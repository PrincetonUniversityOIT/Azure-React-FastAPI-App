CREATE USER 'test'@'%' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON *.* TO 'test'@'%';
FLUSH PRIVILEGES;

-- Azure SQL version
-- ask dbas to create a user for you, maybe not named test. I used libadmin
