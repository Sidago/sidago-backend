FROM node:24.13

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

ENV PORT=9001

EXPOSE 9001

CMD ["npm", "run", "start"]