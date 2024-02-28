# Use a base image with Docker installed
FROM docker:latest

# Install required packages
RUN apk --no-cache add curl

# Pull the required image
RUN docker pull lukasblecher/pix2tex:api

# Expose the ports
EXPOSE 8502
EXPOSE 8501

# Command to run the containers
CMD ["sh", "-c", "curl -fsSL https://get.docker.com/rootless | sh && dockerd-rootless.sh & docker run --rm -p 8502:8502 lukasblecher/pix2tex:api && docker run --rm -it -p 8501:8501 --entrypoint python lukasblecher/pix2tex:api pix2tex/api/run.py"]
