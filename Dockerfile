# Start from a base Python image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set working directory in the container
WORKDIR /app

# Copy the local files to the container
COPY . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask app port (if running Flask in the app.py)
EXPOSE 5000

# Start the bot and the Flask app
CMD ["sh", "-c", "python bot.py"]
