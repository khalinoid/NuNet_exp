FROM python:3.8

RUN mkdir /app
WORKDIR /app

ADD test.py /app
COPY . .
RUN pip install -r requirements.txt

CMD ["python","test.py"]
