-- Initial test commit via DBeaver

-- OWNERS TABLE

CREATE TABLE Owners(
owner_id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
phone TEXT,
email TEXT,
address TEXT,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP);


-- PETS TABLE

CREATE TABLE Pets(
pet_id INTEGER PRIMARY KEY AUTOINCREMENT,
owner_id INTEGER,
name TEXT NOT NULL,
species TEXT,
breed TEXT,
date_of_birth DATE,
gender TEXT CHECK (gender IN ('Male', 'Female', 'Unknown')),
weight_lbs REAL,
FOREIGN KEY (owner_id) REFERENCES Owners(owner_id) ON DELETE CASCADE);

-- MEDICAL RECORDS TABLE

CREATE TABLE Medical_Records(record_id INTEGER PRIMARY KEY AUTOINCREMENT,
pet_id INTEGER,
visit_date DATE NOT NULL,
reason_for_visit TEXT,
diagnosis TEXT,
treatment TEXT,
notes TEXT,
FOREIGN KEY (pet_id) REFERENCES Pets(pet_id) ON DELETE CASCADE);

