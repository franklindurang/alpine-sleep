FROM debian:bullseye-slim

# Install essential tools
RUN apt-get update && apt-get install -y curl nano vim && rm -rf /var/lib/apt/lists/*

# Keep the container alive
CMD ["sleep", "infinity"]
