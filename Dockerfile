# syntax=docker/dockerfile:1.7

#
# Stage 1 — build the Vue static site.
#
FROM node:22-alpine AS build
WORKDIR /src

COPY frontend/package.json frontend/package-lock.json* ./
RUN npm ci

COPY frontend/ ./
RUN npm run build

#
# Stage 2 — runtime image (static asset server).
#
FROM nginx:1.27-alpine AS runtime

COPY --from=build /src/dist /usr/share/nginx/html

EXPOSE 80
