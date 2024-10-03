# Use an official Python runtime as a parent image
FROM python:3.9-slim
# Set the working directory in the container
WORKDIR /app
# Copy the requirements file into the container
COPY requirements.txt .
# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application code into the container
COPY . .
# Make port 5000 available to the world outside this container
EXPOSE 5000
# Define environment variable
ENV FLASK_APP=app.py
# Run the application
CMD ["python", "app.py"]