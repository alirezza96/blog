CREATE table tags (
	id int AUTO_INCREMENT PRIMARY KEY,
    title varchar(30) UNIQUE NOT null,
    created_at datetime DEFAULT CURRENT_TIMESTAMP
);