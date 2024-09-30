# Use the official Node.js image as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on (default is 3000 for many Node.js apps)
EXPOSE 3000

# Command to run your application
CMD ["node", "index.js"] 
