
FROM python:3.12-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir .

ENV MCP_CONFIG=/app/mcp_config.json

CMD ["mcp2xiaozhi", "run", "--all"]
