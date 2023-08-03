# Dockerfile

# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that your Flask application will run on
EXPOSE 5000

# Define the command to run your application when the container starts
CMD ["python", "app.py"]
