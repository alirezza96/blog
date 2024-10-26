create TABLE users (
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(30) not null,
    avatar varchar(255),
    password varchar(255) not null,
    username varchar(30) UNIQUE not null,
    email varchar(255) UNIQUE not null,
    role enum("admin", "user") DEFAULT "user"
);