# Start with a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY app/ /app/

# Install the application's dependencies (Flask)
RUN pip install Flask

# Expose port 5000 so we can access the app from outside the container
EXPOSE 5000

# The command to run when the container starts
CMD ["python", "main.py"]
