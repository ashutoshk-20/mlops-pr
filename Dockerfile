# Stage 1: Build the application
FROM python:3.10-slim AS backend

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the application files
COPY . .

# Expose the port
EXPOSE 5000

# Set the entrypoint for the container
CMD ["python", "app.py"]
