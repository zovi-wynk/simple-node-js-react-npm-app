    ## Stage 1 :  Build container based on Node.js, to build and compile Angular
FROM node:11.10.0-alpine as buildContainer


RUN apt-get update && apt-get install -y \
    python-dev \
    zip \
    jq

RUN curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py
RUN pip install awscli

## Choose the directory, in which we will place our code
WORKDIR /app

## Copy package.json & package-lock.json into our container /app directory
COPY package*.json /app/

## install artifacts & dependecies, which will generate node_modules folder
## npm ci command is similar to npm-install, except it’s meant to be used in automated environments such as test platforms, continuous integration, and deployment
RUN npm install

COPY ./ /app/

## Default environment for build is production, it can be changed while issuing build commands
ARG environment

RUN npm run build


FROM node:11.10.0-alpine

WORKDIR /app

# Copy dependency definitions
#COPY --from=buildContainer /app/package.json /app
#COPY --from=buildContainer /app/server.js /app

# Get all the code needed to run the app
COPY --from=buildContainer /app/build /app/dist

EXPOSE 4000

CMD ["node"]