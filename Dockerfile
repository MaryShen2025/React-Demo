FROM node:14
WORKDIR /usr/share/react
COPY package*.json /usr/share/react/
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
ENTRYPOINT ["npm","start"]
ENTRYPOINT ["npm","start","--","--host","0.0.0.0","--port","3000"]

