# Use a lightweight Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the scripts and requirements file
COPY TeamsIntelBot.py /app/
COPY requirements.txt /app/
COPY checkFeed.py /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Default command can be overridden by Docker/Kubernetes
ENTRYPOINT ["python"]
CMD ["TeamsIntelBot.py"]