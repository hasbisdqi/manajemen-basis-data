-- Create election database
CREATE DATABASE election;
-- Use election database
USE election;

-- Create tables

CREATE TABLE users (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (id)
);

CREATE TABLE elections (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT elections_pk PRIMARY KEY (id)
);

CREATE TABLE candidates (
    id INT AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    bio TEXT NOT NULL,
    election_id INT NOT NULL,
    CONSTRAINT candidates_pk PRIMARY KEY (id),
    CONSTRAINT candidate_election FOREIGN KEY (election_id) REFERENCES elections(id)
);

CREATE TABLE voters (
    id INT AUTO_INCREMENT,
    election_id INT NOT NULL,
    ticket VARCHAR(255) NOT NULL UNIQUE,
    CONSTRAINT voters_pk PRIMARY KEY (id),
    CONSTRAINT voter_election FOREIGN KEY (election_id) REFERENCES elections(id)
);

CREATE TABLE votes (
    id INT AUTO_INCREMENT,
    candidate_id INT NOT NULL,
    voter_id INT NOT NULL,
    CONSTRAINT votes_pk PRIMARY KEY (id),
    CONSTRAINT vote_candidate FOREIGN KEY (candidate_id) REFERENCES candidates(id),
    CONSTRAINT vote_voter FOREIGN KEY (voter_id) REFERENCES voters(id)
);
