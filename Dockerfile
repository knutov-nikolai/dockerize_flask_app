FROM python:3.11

RUN apt-get update -y \
    && apt-get install -y build-essential
ENV DIR /app
WORKDIR ${DIR}

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . ${DIR}

ENV FLASK_APP=app.py

CMD ["python", "app.py"]

