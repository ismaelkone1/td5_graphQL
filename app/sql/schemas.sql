CREATE TABLE groupement (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    type_id INT NOT NULL,
    adresse VARCHAR(255),
    ville VARCHAR(255)
);

CREATE TABLE personnel (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    mail VARCHAR(255) NOT NULL,
    telephone VARCHAR(20),
    groupe_id INT NOT NULL
);

CREATE TABLE praticien (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    ville VARCHAR(255),
    email VARCHAR(255) NOT NULL,
    telephone VARCHAR(20),
    specialite_id INT NOT NULL,
    groupe_id INT NOT NULL
);

CREATE TABLE specialite (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE type_groupement (
    id SERIAL PRIMARY KEY,
    type_libelle VARCHAR(255) NOT NULL,
    type_description TEXT
);

-- Contraintes de clés étrangères
ALTER TABLE groupement
ADD CONSTRAINT fk_groupement_type FOREIGN KEY (type_id) REFERENCES type_groupement(id);

ALTER TABLE personnel
ADD CONSTRAINT fk_personnel_group FOREIGN KEY (groupe_id) REFERENCES groupement(id);

ALTER TABLE praticien
ADD CONSTRAINT fk_praticien_specialite FOREIGN KEY (specialite_id) REFERENCES specialite(id),
ADD CONSTRAINT fk_praticien_group FOREIGN KEY (groupe_id) REFERENCES groupement(id);
