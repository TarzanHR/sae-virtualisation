# Guide : Pousser des modifications sur Git

Ce guide explique comment créer une nouvelle branche, y ajouter des modifications et les pousser sur un dépôt Git.

##  Étapes

### 1️ Créer et passer sur une nouvelle branche
```sh
git checkout -b nom-de-votre-branche
```
Remplacez `nom-de-votre-branche` par le nom de la branche que vous souhaitez créer.

### 2️ Pousser la branche sur le dépôt distant
```sh
git push -u origin nom-de-votre-branche
```
Cela permet de créer la branche sur le dépôt distant et d'établir un suivi.

### 3️ Ajouter et valider les modifications
```sh
git add .
git commit -m "feat: description de la modification"
```
- `git add .` ajoute toutes les modifications.
- `git commit -m` permet de documenter les modifications avec un message clair. Remplacez `"feat: description de la modification"` par un message explicite.

### 4️ Pousser les modifications sur la branche distante
```sh
git push
```
Cela met à jour la branche distante avec vos modifications.

### 5️ Créer une Pull Request
1. Rendez-vous sur **GitHub**.
2. Ouvrez une **Pull Request** pour fusionner la branche dans `main`.
3. Attendez l'approbation et la fusion.

### 6️ Supprimer la branche locale après fusion
```sh
git checkout main && git branch -d nom-de-votre-branche
```
Cela vous ramène sur `main` et supprime la branche locale devenue inutile.

##  Astuces
- **Nommez vos branches** de manière explicite : `feature/ajout-login`, `fix/correction-bug`, etc.
- **Suivez une convention pour les messages de commit** (`feat:`, `fix:`, `docs:`, `refactor:`).
- **Toujours mettre à jour la branche `main` avant de créer une nouvelle branche** :
  ```sh
  git checkout main
  git pull origin main
  ```

---
ceci est un mauvais commit