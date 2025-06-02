FROM alpine

# Install busybox utilities
RUN apk add --no-cache bash curl nano

# Set working directory
WORKDIR /data

# Fake healthcheck so Railway thinks the container is alive
HEALTHCHECK CMD echo "ok"

# Keep the container running
CMD ["sleep", "infinity"]
