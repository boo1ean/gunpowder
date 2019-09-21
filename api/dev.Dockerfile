FROM node:12.3.1
WORKDIR /app
COPY api/package-lock.json package-lock.json
COPY api/package.json package.json
RUN npm install

expose 3000
CMD ["npm", "run", "dev"]
