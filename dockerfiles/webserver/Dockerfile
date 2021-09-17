FROM node:14-buster

# guardian node prereq
RUN apt update
RUN apt install -y screen && apt install -y vim

# Webserver /nodejs
RUN mkdir -p /home/node/app/node_modules
WORKDIR /home/node/app
COPY webserver ./
RUN chown -R node:node /home/node/app
USER node
RUN rm -rf ./node_modules/*
RUN npm install
COPY --chown=node:node ../.. .
EXPOSE 8000
CMD [ "nohup", "node", "index.js" ]

