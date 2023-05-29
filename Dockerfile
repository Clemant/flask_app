FROM python:3.8-slim-buster

# Set the working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py .

# Run the application
EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]