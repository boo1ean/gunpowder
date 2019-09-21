FROM node:12.3.1
WORKDIR /app
COPY frontend/yarn.lock yarn.lock
COPY frontend/package.json package.json
RUN yarn

expose 3000
CMD ["yarn", "dev"]
