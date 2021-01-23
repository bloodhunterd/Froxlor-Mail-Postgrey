FROM debian:stable-slim

# ===================================================
# Configuration
# ===================================================

ENV DELAY=120

# ===================================================
# Ports
# ===================================================

EXPOSE 10023

# ===================================================
# Base packages
# ===================================================

# Update sources and preinstalled packages
RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends

RUN apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    unattended-upgrades

# ===================================================
# Postgrey
# ===================================================

RUN apt-get install -y --no-install-recommends \
    postgrey

# ===================================================
# Entrypoint
# ===================================================

CMD postgrey --inet=0.0.0.0:10023 --delay=${DELAY}
