CREATE TABLE articles (
	id int AUTO_INCREMENT PRIMARY KEY,
    title varchar(30) not null,
    content mediumtext, 
    slug varchar(30) UNIQUE,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP,
    author_id int,
    
    CONSTRAINT fk_author_id FOREIGN key (author_id) REFERENCES users(id)

);