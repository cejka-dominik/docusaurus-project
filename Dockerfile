# 1 - Build (using alpine since it is lightweigt)
FROM node:18-alpine AS builder

WORKDIR /app

COPY doc-saurus-mole/ ./doc-saurus-mole/
WORKDIR /app/doc-saurus-mole

RUN npm install
RUN npm run build

# 2 - Serve with Nginx (because we are building static site)
FROM nginx:alpine

# 3 - Remove default Nginx page (because it is not needed)
RUN rm -rf /usr/share/nginx/html/*

# 4 - Copy built Docusaurus site to Nginx
COPY --from=builder /app/doc-saurus-mole/build /usr/share/nginx/html

# 5 - Expose port so the app could be accessed
EXPOSE 80

# 6 - Commands executed when starting container (daemon off is to run the container in foreground)
CMD ["nginx", "-g", "daemon off;"]
