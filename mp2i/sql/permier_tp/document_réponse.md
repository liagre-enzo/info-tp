# TP bases de données

## I. modèle relationnel

### 4. Schema relationnel

Q.23) Flemme de faire un dessin donc voici les schemas écrit.

- Clients : {🔑 __numero_premis__ = INTEGER, nom = TEXT, prenom = TEXT, annee_naissance = INTEGER, adresse = TEXT, email = TEXT, telephone = TEXT}
- Locations : {🔑 __id__ = INTEGER, 🔑 #permis_client = INTEGER, 🔑 # immat_voiture = INTEGER, nb_jours = INTEGER, date_debut = TEXT}
- Voitures : {🔑 __immatriculation__ = INTEGER, marque = TEXT, model = TEXT, annee = INTEGER, prix_par_jour = REAL}

## II. Projections et Sélections

### 3 Quelques sélections

Q.6

```SQL
SELECT nom, prenom, annee_naissance
FROM Clients
WHERE prenom = 'Dimitri' AND annee_naissance % 2 = 0 AND LENGTH(nom) <= 6
```

Q.7

```SQL
SELECT nom
FROM Clients
WHERE telephone IS NULL OR email IS NULL OR adresse IS NULL;
```

Q.8

```SQL
SELECT *
FROM Locations
WHERE date_debut LIKE '%-01-%';
```

Q.9

```SQL
SELECT prenom
FROM Clients
WHERE LOWER(prenom) LIKE '%e___e%';
```
