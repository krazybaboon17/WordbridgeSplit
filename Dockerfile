# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies needed for Reflex and Python packages
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Initialize Reflex (this creates the .web directory if needed)
RUN reflex init

# Expose the port the app runs on
EXPOSE 8000

# Run the backend
# We use --env prod to ensure production settings
CMD ["reflex", "run", "--env", "prod", "--backend-only", "--loglevel", "info"]
