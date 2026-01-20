FROM python:3.10-slim-buster

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip

# Increase timeout + install requirements
RUN pip --default-timeout=100 install -r requirements.txt --no-cache-dir

CMD ["python3", "app.py"]
