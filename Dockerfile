# Use official Nginx lightweight image
FROM nginx:alpine

# Set working directory inside Nginx HTML folder
WORKDIR /usr/share/nginx/html

# Remove default Nginx index page
RUN rm -rf ./*

# Copy your static webpage into container
COPY index.html .

# Expose port 80 to access the website
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

