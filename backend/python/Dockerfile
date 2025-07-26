FROM python:3.11-slim

WORKDIR /app

# Copy all backend code and requirements
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose gRPC port
EXPOSE 50051

# Start the gRPC server
CMD ["python", "expense_tracker_server.py"]