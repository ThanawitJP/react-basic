# Dockerfile

# Pull the base image
FROM node:18.14.0-alpine

# Set the working directory
WORKDIR /app

# Copy app dependencies to container
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy app src to container
COPY . .

# Deploy app for local development
CMD ["npm","run","dev-docker"]
