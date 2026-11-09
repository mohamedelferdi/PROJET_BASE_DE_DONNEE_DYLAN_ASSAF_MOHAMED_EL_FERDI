# PROJET_BASE_DE_DONNEE_DYLAN_ASSAF_MOHAMED_EL_FERDI

# Projet de Base de Données - Club de Boxe Amateur

---

## I. Analyse des Besoins (Framework RICARDO)
Conformément aux instructions du projet, nous avons utilisé une IAG avec le framework suivant:

* **Rôle (R) :** Expert en analyse de données et gestion de clubs sportifs affiliés à la FFBoxe.
* **Instructions (I) :** Définir les règles métier et le dictionnaire de données pour un club de boxe amateur.
* **Contexte (C) :** Gestion des adhérents, des entraîneurs, du planning par salle et du parrainage.
* **Contraintes (A) :** Fournir entre 25 et 35 données brutes et des règles permettant une modélisation avancée (récursive et n-aire).
* **Références (R) :** Standards de la Fédération Française de Boxe (FFBoxe).
* **Objectifs (O) :** Créer une base solide pour un MCD en 3FN.
* **Désiré (D) :** Tableaux Markdown clairs et liste à puces.

---

## II. Règles de Gestion
* Chaque adhérent possède un numéro de licence FFB unique.
* Un adhérent appartient à une seule catégorie de poids (1,1).
* **Association Récursive :** Un adhérent peut parrainer un autre membre du club (0,1).
* **Association N-aire :** La participation d'un adhérent est liée simultanément à une séance et à la salle utilisée.
* Une séance se déroule obligatoirement dans une seule salle (1,1).
* Une séance est encadrée par un ou plusieurs adhérents coachs.
* Un paiement est rattaché à un seul adhérent et concerne une cotisation spécifique.

---

## III. Modèle Logique de Données (MLD)
Conformément à l'étape 3 du projet:

* **CATEGORIE** (<u>ID_CATEGORIE</u>, POIDS)
* **SALLE** (<u>NOM_SALLE</u>, CAPACITE)
* **COTISATIONS** (<u>ID_COTISATION</u>, MONTANT_ANNUEL)
* **PAIEMENT** (<u>NUM_PAIEMENT</u>, MONTANT_VERSER, DATE_VERSE, MODE_VERSEMENT)
* **ADHERENT** (<u>NUM_LICENCE_FFB</u>, NOM, PRENOM, DATE_NAISSANCE, SEXE, ADRESSE, TELEPHONE, CERTIFICAT, #NUM_LICENCE_FFB_PARRAIN, #NUM_PAIEMENT, #ID_COTISATION, #ID_CATEGORIE)
* **SCEANCE** (<u>ID_SCEANCE</u>, JOUR, HEURE, #NOM_SALLE)
* **ENCADRER** (<u>#NUM_LICENCE_FFB, #ID_SCEANCE</u>)
* **PARTICIPER** (<u>#NUM_LICENCE_FFB, #ID_SCEANCE, #NOM_SALLE</u>)

---

## IV. Scénario d'Utilisation (Étape 5)
**Rôle défini :** Directeur Sportif du club.

**Contexte :** Le directeur utilise cette base pour piloter l'activité du club. Il doit s'assurer que les boxeurs sont aptes (certificat médical), que les cotisations sont perçues pour financer le matériel, et que les séances ne dépassent pas la capacité des salles (Rings). Les requêtes permettent également de suivre le système de parrainage interne pour l'intégration des nouveaux.


## V. Livrables SQL (Partie 2)
Les fichiers suivants sont disponibles dans le répertoire:
* `1_creation.sql` : Script de création des tables et clés étrangères.
* `2_contraintes.sql` : Contraintes de validation métier (CHECK).
* `3_insertion.sql` : Jeu de données généré par IA (10 adhérents).
* `4_interrogation.sql` : Les 20 requêtes obligatoires (Jointures, Agrégations, Imbriquées).
* `prompt_insertion.txt` : Le prompt utilisé pour la génération des données.


## VI. Présentation Vidéo
Conformément à l'étape finale:
* La vidéo de présentation (12 min max) explique le MCD, le MPD et le scénario d'utilisation.
* **Lien de la vidéo :** [Insérer ici votre lien Panopto ou Moodle]


## Modèle Conceptuel de Données (MCD)
Le MCD ci-dessous respecte la **3FN** et inclut deux éléments de modélisation avancée : une **association récursive** (PARRAINER) et une **association n-aire** (PARTICIPER).

MCD Final<img width="945" height="353" alt="image" src="https://github.com/user-attachments/assets/df48653b-c376-40d5-9f7e-d4ad180efc72" />

MLD 
<img width="1797" height="732" alt="image" src="https://github.com/user-attachments/assets/992256f2-e68a-414f-ac00-b84b0e7f11e8" />


