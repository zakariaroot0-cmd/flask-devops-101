# 1. Use a small official Python image as base
FROM python:3.12-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy requirements first (Docker caching trick — speeds up rebuilds)
COPY requirements.txt .

# 4. Install dependencies (no cache to keep image small)
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your code
COPY . .

# 6. Tell Docker which port the app listens on (for documentation)
EXPOSE 5000

# 7. Command to run when the container starts
CMD ["python", "app.py"]