# Use the existing Docker image as the base image
FROM lukasblecher/pix2tex:api

# Expose the necessary port
EXPOSE 8502

# Define any additional configurations or commands if needed
# For example, you could add a CMD instruction to specify the default command to run when the container starts
CMD ["docker", "run", "--port", "8502", "lukasblecher/pix2tex:api"]