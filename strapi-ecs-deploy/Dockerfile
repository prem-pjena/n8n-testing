# Build stage
FROM node:18-bullseye AS build

WORKDIR /usr/src/app

COPY my-strapi-app/package*.json ./
RUN npm install

COPY my-strapi-app/ ./
ENV NODE_ENV=production

RUN npm run build

# Final image
FROM node:18-bullseye

WORKDIR /usr/src/app

COPY --from=build /usr/src/app ./
ENV NODE_ENV=production

EXPOSE 1337
CMD ["npm", "start"]
