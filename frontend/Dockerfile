FROM node:12.3.1
WORKDIR /app
COPY frontend/package-lock.json package-lock.json
COPY frontend/package.json package.json
RUN npm install --production --quiet --depth=0
COPY frontend/src /app/src
RUN npm run build

EXPOSE 3000
CMD ["npm", "run", "prod"]
