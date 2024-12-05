# Base image to execute code
FROM alpine:latest
# Add in bash for our shell script
RUN apk add --no-cache bash
# Copy in entrypoint startup script
COPY entrypoint.sh /entrypoint.sh
# Script to run when container starts
ENTRYPOINT ["/entrypoint.sh"]
