FROM node:12.3.1
WORKDIR /app
COPY api/package-lock.json package-lock.json
COPY api/package.json package.json
RUN npm install --production --quiet --depth=0
COPY api/src /app/src

EXPOSE 3000
CMD ["npm", "run", "prod"]
