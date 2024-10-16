create DATABASE bienesRaices2

use bienesRaices2

CREATE table sellers(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(32) NOT NULL,
    email VARCHAR(32) NOT NULL,
    phone VARCHAR(10)
);

create table propierties(
    id INT(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tittle VARCHAR(32) not NULL,
    price DECIMAL(10,2) NOT NULL,
    image VARCHAR(256),
    description longtext,
    roons INT,
    wc INT,
    garage INT,
    TIMESTAMP DATE,
    id_seller INT NOT NULL,
    Foreign Key (id_seller) REFERENCES sellers (id)
);

INSERT INTO sellers VALUES
(1001,"FOO BAR",'foo@bar.com','1234567898'),
(1002,"BAR FOO",'bar@bfoo.com','1234567898')