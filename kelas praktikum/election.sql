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

INSERT INTO users (name, email, password) VALUES 
('Daphna Pascho', 'dpascho0@wikispaces.com', 'pK8`KPsoo'),
('Waldo Renac', 'wrenac1@rediff.com', 'cT1>$v(#ZSB'),
('Shandy Broadwood', 'sbroadwood2@nyu.edu', 'sW7=m6Y@LsWOdu'),
('Arnoldo McClaughlin', 'amcclaughlin3@harvard.edu', 'qK5`mpFo&'),
('Jenifer Bellerby', 'jbellerby4@photobucket.com', 'gF7~<n!r=)');

INSERT INTO elections (name, description, start_date, end_date) VALUES
('Plajo', 'Major laceration of inferior vena cava, initial encounter', '6/25/2024', '11/18/2023'),
('Meevee', 'Gastric contents in pharynx causing oth injury, subs encntr', '7/5/2024', '9/7/2024'),
('Tagpad', 'Unsp injury at C7 level of cervical spinal cord, init encntr', '5/18/2024', '1/7/2024'),
('Pixoboo', 'War operations involving oth fire/hot subst, civilian, init', '12/1/2023', '3/22/2024'),
('Twitterwire', 'Retained (old) magnetic fb in posterior wall of globe', '11/7/2023', '6/26/2024');

INSERT INTO candidates (name, bio, election_id) VALUES
('Haskell Cafferty', 'Account Executive', 1),
('Randie Choudhury', 'Chemical Engineer', 2),
('Erv Follin', 'Clinical Specialist', 3),
('Israel Broyd', 'VP Quality Control', 4),
('Rutherford Wickendon', 'Help Desk Technician', 5);

INSERT INTO voters (election_id, ticket) VALUES
(1, '88UW78'),
(3, '03IT79'),
(3, '20XR19'),
(3, '69CH75'),
(5, '20HD17');

INSERT INTO votes (candidate_id, voter_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

SELECT * FROM users;
SELECT * FROM elections;
SELECT * FROM candidates;
SELECT * FROM voters;
SELECT * FROM votes;

