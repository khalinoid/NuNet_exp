FROM python:3.8

ADD test.py /
RUN apt-get update && apt-get install -y python3-opencv
RUN pip install mediapipe==0.8.9

CMD [ "python", "./test.py" ]
