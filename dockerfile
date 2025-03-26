# Utiliser Node.js 22
FROM node:22-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package.json ./
COPY package-lock.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du projet (y compris prisma/)
COPY . .

# Générer les fichiers Prisma Client
RUN npx prisma generate

# Compiler TypeScript en JavaScript
RUN npm run build

# Commande par défaut pour démarrer l'application
CMD ["npm", "start"]