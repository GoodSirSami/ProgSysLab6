-- Description: Fichier contenant les commandes SQL pour la base de données paysG20 (Labo 6)
-- Auteur: Samuel Des Cormiers
-- Date: 2024-10-02
-- version: 1.0

USE paysG20;
-- 1.
SELECT Pays FROM `caracPays` WHERE NbHab > 100000000 AND DensitePop > 100;

-- 2.
SELECT Pays FROM `caracPays` WHERE DejaVisite = 'O' AND (PIB > 2000 OR NbHab > 300000000);

-- 3.
SELECT Pays FROM `caracPays` WHERE Pays LIKE 'A%' AND Capitale LIKE '%A%';

-- 4.
SELECT Pays FROM `caracPays` WHERE (DejaVisite = 'N' AND (PIB IS NULL OR DensitePop < 50)) OR (DejaVisite = 'O' AND NbHab < 50000000);

-- 5.
SELECT Pays FROM caracPays WHERE PIB = (SELECT MAX(PIB) FROM caracPays);

-- 6.
SELECT Pays FROM caracPays WHERE NbHab = (SELECT MIN(NbHab) FROM caracPays);

-- Bonus
SELECT Pays FROM caracPays ORDER BY PIB DESC LIMIT 1;
SELECT Pays FROM caracPays ORDER BY NbHab ASC LIMIT 1;