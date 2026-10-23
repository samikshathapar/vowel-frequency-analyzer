
FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends bash && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash", "/github/workspace/.github/scripts/entrypoint.sh"]
