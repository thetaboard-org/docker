FROM node:16-buster

# guardian node prereq
RUN apt update
RUN apt install -y screen && apt install -y vim

# Webserver /nodejs
RUN mkdir -p /home/node/app/node_modules
WORKDIR /home/node/app
RUN chown -R node:node /home/node/app
USER node
COPY webserver/package.json webserver/package-lock.json ./
RUN npm install

COPY webserver ./

COPY --chown=node:node ../.. .
EXPOSE 8000
CMD [ "nohup", "node", "index.js" ]

