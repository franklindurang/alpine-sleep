# FROM alpine

# # Install busybox utilities
# RUN apk add --no-cache bash curl nano

# # Set working directory
# WORKDIR /data

# # Fake healthcheck so Railway thinks the container is alive
# HEALTHCHECK CMD echo "ok"

# # Keep the container running
# CMD ["sleep", "infinity"]

# FROM filebrowser/filebrowser:s6
# EXPOSE 80

# FROM filebrowser/filebrowser

# EXPOSE 80

# CMD ["filebrowser", "--port", "80", "--noauth"]
# CMD ["sleep", "infinity"]

# FROM python:3.11-slim

# WORKDIR /app

# # Simple HTTP server
# CMD ["python", "-m", "http.server", "80"]

# FROM python:3.10-slim

# WORKDIR /app

# # Install dependencies

FROM python:3.10-slim

WORKDIR /app

EXPOSE 80

CMD ["python3", "-m", "http.server", "80"]
RUN pip install --no-cache-dir httpserver

# Start a basic file browser on port 80
CMD ["python3", "-m", "http.server", "80"]
