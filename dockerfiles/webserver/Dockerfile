FROM node:14-buster

RUN apt update && apt install -y screen vim

# Create app directory
RUN mkdir -p /home/node/app/node_modules
WORKDIR /home/node/app

# Install dependencies as root
COPY webserver/package.json webserver/package-lock.json ./
RUN npm install

# Copy the rest of the app (including index.js)
COPY webserver ./
COPY ../.. .

# Fix permissions
RUN chown -R node:node /home/node/app

# Now switch to non-root user
USER node

EXPOSE 8000
CMD [ "node", "index.js" ]
