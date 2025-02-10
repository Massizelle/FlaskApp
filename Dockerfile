# Utiliser une image de base officielle de Python
FROM python:3.11-slim

# Ajouter des labels recommandés
LABEL maintainer="massizelle.boubadjou@se.univ-bejaia.dz"
LABEL name="FlaskApp"
LABEL version="1.0"

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances dans le conteneur
COPY requirements.txt requirements.txt

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application Flask écoute
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["python", "app.py"]
