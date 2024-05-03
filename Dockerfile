# Container image that runs your code
FROM alpine:latest
 
# Copies entrypoint.sh from your repo to the path ‘/’ of the container
COPY entrypoint.sh /entrypoint.sh
 
# Make the script executable
RUN chmod +x entrypoint.sh
 
# Executes ‘/entrypoint.sh’ when the docker container starts up
ENTRYPOINT [“/entrypoint.sh”]