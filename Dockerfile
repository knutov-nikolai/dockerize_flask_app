FROM python:3

RUN apt-get update -y
RUN apt-get install -y build-essential

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app.py

ENTRYPOINT ["python"]

CMD ["app.py"]

