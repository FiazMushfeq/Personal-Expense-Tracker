FROM python:3.11-slim

WORKDIR /app

# Install system dependencies for venv and pip
RUN apt-get update && apt-get install -y python3-venv python3-pip && rm -rf /var/lib/apt/lists/*

# Create virtual environment
RUN python3 -m venv /app/venv

# Set environment variables for venv
ENV VIRTUAL_ENV=/app/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Copy all backend code and requirements (excluding local venv via .dockerignore)
COPY . /app

# Upgrade pip and install dependencies in venv
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose gRPC port
EXPOSE 50051

# Start the gRPC server using venv's Python
CMD ["python", "expense_tracker_server.py"]