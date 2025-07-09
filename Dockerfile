# Specify base image
FROM node:14-alpine

WORKDIR /user/app

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm","start"]

