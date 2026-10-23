
FROM python:3.9-slim

WORKDIR /app

# Install Git and Bash
RUN apt-get update && \
    apt-get install -y --no-install-recommends git bash && \
    rm -rf /var/lib/apt/lists/*

# Copy project files into container
COPY . /app

# Make the entrypoint script executable
RUN chmod +x /app/.github/scripts/entrypoint.sh

# Run the entrypoint script
ENTRYPOINT ["/app/.github/scripts/entrypoint.sh"]
