FROM node:22-slim

# Installer OpenSSL
RUN apt-get update -y && apt-get install -y openssl && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . .

RUN npx prisma generate
RUN npm run build

# Commande pour exécuter les tests
CMD ["npm", "test"]