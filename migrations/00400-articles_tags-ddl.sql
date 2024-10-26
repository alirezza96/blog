CREATE TABLE  articles_tages(
	id int AUTO_INCREMENT PRIMARY KEY,
    article_id int,
    tag_id int,
	UNIQUE KEY tag_article_uq(article_id, tag_id),
    CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES articles(id),
    CONSTRAINT fk_tag_id FOREIGN KEY (tag_id) REFERENCES tags(id)
);