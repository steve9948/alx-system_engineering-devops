# A script to sut up a new user
CREATE USER holberton_user@localhost IDENTIFIED BY "projectcorrection280hbtn";
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
CREATE TABLE nexus6 (id INTAGER , name TEXT);
INSERT INTO nexus6 VALUES (0, "Jarvis");
GRANT SELECT ON tyrell_corp.nexus6 TO holberton_user@locahost;
CREATE USER replica_user@'%' IDENTIFIED BY "replica_user";
GRANT REPLICATION SLAVE ON *.* TO 'replica _user' @ '%';
GRANT SELECT ON mysql.user TO holberton_user@localhost;
CREATE USER web
