# Use lightweight Node image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json
COPY package.json ./

# No dependencies to install, but this keeps pattern standard
RUN npm install --production

# Copy source code
COPY . .


# Expose app port
EXPOSE 3000

# Run the server
CMD ["npm", "start"]