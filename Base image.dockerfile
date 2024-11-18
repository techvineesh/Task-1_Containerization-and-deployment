# Base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application source code to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application's port
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]
