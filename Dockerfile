

FROM python:3.10-slim

WORKDIR /app

EXPOSE 80

CMD ["python3", "-m", "http.server", "80"]
RUN pip install --no-cache-dir httpserver

# Start a basic file browser on port 80
CMD ["python3", "-m", "http.server", "80"]
