FROM node:14

# Create app directory
WORKDIR /app

# Copy current directory to app directory
ADD . /app

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
