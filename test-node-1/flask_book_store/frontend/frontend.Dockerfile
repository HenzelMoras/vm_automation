# Frontend Dockerfile
FROM python:3.9.21-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py /app/
COPY templates /app/templates/

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

EXPOSE 5000

CMD ["python", "-m","flask", "run", "--host=0.0.0.0", "--port=5000"]