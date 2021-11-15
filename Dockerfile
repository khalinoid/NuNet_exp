FROM python:3.8

RUN mkdir /nunet
ADD test.py /nunet
WORKDIR /nunet
ENTRYPOINT ["python"]
CMD ["test.py"]