# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy all local files (including your Index.html) into the Nginx web directory
COPY . /usr/share/nginx/html
