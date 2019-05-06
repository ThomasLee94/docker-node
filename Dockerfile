# Specify base image
FROM node:alpine

# Set working directory - helps prevent conficts with existing files
WORKDIR /usr/app

# Copy everything in current directory to working directory in container
# only copy packge.json
COPY package.json .

# Install dependencies
RUN npm install

# Only rebuild if we change our dependencies, not source code - caching
COPY . .

# Default command
CMD ["npm","start"]


