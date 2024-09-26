CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE elections (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE candidates (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    bio TEXT NOT NULL,
    election_id INT NOT NULL,
    FOREIGN KEY (election_id) REFERENCES elections(id)
);

CREATE TABLE votes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT NOT NULL,
    voter_id INT NOT NULL,
    FOREIGN KEY (candidate_id) REFERENCES candidates(id)
    FOREIGN KEY (voter_id) REFERENCES voters(id)
);

CREATE TABLE voters (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ticket VARCHAR(255) NOT NULL UNIQUE,
    election_id INT NOT NULL,
    FOREIGN KEY (election_id) REFERENCES elections(id)
);