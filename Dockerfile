FROM python:3.11-slim

WORKDIR /app

COPY requirements-dev.txt .

RUN pip install --no-cache-dir -r requirements-dev.txt

COPY . .




EXPOSE 8000

CMD ["gunicorn", "-b","0.0.0.0:8000", "app.main:app"]