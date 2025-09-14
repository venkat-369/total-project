# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy custom static website
COPY index.html /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Default command
CMD ["nginx", "-g", "daemon off;"]

