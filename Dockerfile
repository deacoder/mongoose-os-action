FROM alpine

# Install mos tool dependencies
RUN apk add --no-cache curl

# Install mos tool
ADD https://mongoose-os.com/downloads/mos/install.sh /tmp/install-mos.sh
RUN sh /tmp/install-mos.sh

COPY mos mos

# Set entrypoint
ENTRYPOINT ["/mos"]
