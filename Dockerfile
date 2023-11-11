FROM node:14.9.0 AS build


WORKDIR /Capstone_Project_repo
COPY package.json package-lock.json ./
RUN npm install


COPY . .
RUN npm run build


FROM nginx:1.18-alpine
COPY --from=build /Capstone_Project_repo/build /usr/share/nginx/html
