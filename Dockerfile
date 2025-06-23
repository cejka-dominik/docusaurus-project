# Stage 1: Build Docusaurus
FROM node:18-alpine AS builder

WORKDIR /app

COPY doc-saurus-mole/ ./doc-saurus-mole/
WORKDIR /app/doc-saurus-mole

RUN npm install
RUN npm run build

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy built Docusaurus site to Nginx
COPY --from=builder /app/doc-saurus-mole/build /usr/share/nginx/html

# Copy a custom nginx config if needed (optional)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
