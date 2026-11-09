-- Références
INSERT INTO CATEGORIE VALUES ('CAT1', 'Plume < 57kg'), ('CAT2', 'Léger < 63kg'), ('CAT3', 'Moyen < 75kg'), ('CAT4', 'Lourd > 91kg');
INSERT INTO SALLE VALUES ('Ring A', 10), ('Ring B', 12), ('Dojo Municipal', 30);
INSERT INTO COTISATIONS VALUES ('COT1', 150.00), ('COT2', 250.00), ('COT3', 350.00);

-- Paiements
INSERT INTO PAIEMENT VALUES ('P01', 150.00, '2026-01-10', 'Espèces'), ('P02', 250.00, '2026-01-12', 'Carte'), ('P03', 350.00, '2026-01-15', 'Virement'), ('P04', 150.00, '2026-02-01', 'Carte'), ('P05', 250.00, '2026-02-05', 'Chèque');

-- Adhérents (Parrains d'abord)
INSERT INTO ADHERENT VALUES ('FFB001', 'DA SILVA', 'Marc', '1990-05-12', 'M', 'Paris', '0102030405', 'OUI', NULL, 'P01', 'COT1', 'CAT2');
INSERT INTO ADHERENT VALUES ('FFB002', 'BELMONDO', 'Jean', '1985-04-12', 'M', 'Paris', '0607080911', 'OUI', NULL, 'P03', 'COT2', 'CAT4');

-- Filleuls
INSERT INTO ADHERENT VALUES ('FFB003', 'LEGRAND', 'Sophie', '1995-10-10', 'F', 'Lyon', '0607080910', 'OUI', 'FFB001', 'P02', 'COT2', 'CAT1');
INSERT INTO ADHERENT VALUES ('FFB004', 'GOMEZ', 'Luis', '2001-02-14', 'M', 'Marseille', '0622334455', 'OUI', 'FFB002', 'P05', 'COT1', 'CAT3');

-- Séances et Participations
INSERT INTO SCEANCE VALUES ('S01', 'Lundi', '18:00:00', 'Ring A'), ('S02', 'Mercredi', '19:00:00', 'Ring B');
INSERT INTO PARTICIPER VALUES ('FFB003', 'S01', 'Ring A'), ('FFB004', 'S02', 'Ring B');
