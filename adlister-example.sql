CREATE TABLE users (
                     id INT NOT NULL AUTO_INCREMENT,
                     name VARCHAR(20) NOT NULL,
                     password VARCHAR(20) NOT NULL,
                     email VARCHAR(30) NOT NULL,
                     PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id INT NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(20) NOT NULL,
                     description VARCHAR(100) NOT NULL,
                     PRIMARY KEY (id)
);

CREATE TABLE category (
                     id INT NOT NULL AUTO_INCREMENT,
                     name VARCHAR(30) NOT NULL,
                     PRIMARY KEY (id)
);

CREATE TABLE user_ads (
                     user_id INT NOT NULL,
                     ads_id INT NOT NULL,
                     FOREIGN KEY (user_id) REFERENCES users (id),
                     FOREIGN KEY (ads_id) REFERENCES ads (id)
);

CREATE TABLE ads_cat (
                        cat_id INT NOT NULL,
                        ads_id INT NOT NULL,
                        FOREIGN KEY (cat_id) REFERENCES users (id),
                        FOREIGN KEY (ads_id) REFERENCES ads (id)
);

