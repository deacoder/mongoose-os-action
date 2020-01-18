FROM alpine:latest

LABEL com.github.actions.name="Build Mongoose OS firmware"
LABEL com.github.actions.description="Builds a Mongoose OS firmware for given target"
LABEL com.github.actions.icon="cpu"
LABEL com.github.actions.color="blue"

LABEL repository="https://github.com/dea82/mongoose-os-action"
LABEL maintainer="Andreas L"

# Install mos tool dependencies
RUN apk add --no-cache curl

# Install mos tool
ADD https://mongoose-os.com/downloads/mos/install.sh /tmp/install-mos.sh
RUN sh /tmp/install-mos.sh

COPY mos mos

# Set entrypoint
ENTRYPOINT ["/mos"]
