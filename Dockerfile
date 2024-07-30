# Use a more specific Node.js base image
FROM node:16.14.2-buster

# Set a working directory
WORKDIR /app

# Copy only package.json and package-lock.json first to leverage Docker cache
COPY package.json package-lock.json ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["npm", "run", "start"]
