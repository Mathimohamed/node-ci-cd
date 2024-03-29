# Use an official Node.js runtime as a parent image
FROM node:20.10.0

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 9000

# Define the command to run your app
CMD ["node", "app.js"]
