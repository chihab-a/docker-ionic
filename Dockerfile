FROM globdev/android

ENV DEBIAN_FRONTEND=noninteractive \
    DBUS_SESSION_BUS_ADDRESS=/dev/nul

ENV IONIC_VERSION 3.13.2
ENV CORDOVA_VERSION 7.0.1

# Install basics
RUN apt-get update \
    && apt-get install -y git wget curl unzip ruby ruby-dev

# Install Node.js
RUN apt-get update \
    && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs

# Install Ionic and Cordova
RUN npm i -g --unsafe-perm ionic@${IONIC_VERSION} cordova@${CORDOVA_VERSION} \
    && ionic --no-interactive config set -g daemon.updates false \
    && cordova telemetry off \
    && npm cache clear --force

# Clean up
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get autoremove -y \
    && apt-get clean

EXPOSE 8100 35729
CMD ["ionic", "serve"]