# Use a base image with Docker installed
FROM docker:latest

# Pull the required image
RUN docker pull lukasblecher/pix2tex:api

# Expose the ports
EXPOSE 8502
EXPOSE 8501

# Command to run the containers
CMD ["sh", "-c", "docker run --rm -p 8502:8502 lukasblecher/pix2tex:api && docker run --rm -it -p 8501:8501 --entrypoint python lukasblecher/pix2tex:api pix2tex/api/run.py"]
