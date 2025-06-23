# Use official Node.js LTS image
FROM node:16

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
