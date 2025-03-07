FROM zenika/alpine-chrome:with-node

ARG NEXT_PUBLIC_FATHOM_CODE
ARG NEXT_PUBLIC_SITE_URL

# Create app directory
WORKDIR /usr/src/app

COPY package.json ./

# Install deps
RUN npm install

# Bundle app source
COPY . .

# Build
RUN npm run build

# Start
CMD [ "npm", "start" ]
