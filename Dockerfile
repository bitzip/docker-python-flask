FROM daocloud.io/library/python:2.7
ENV PYTHONUNBUFFERED 1

ENV WORK=/app
WORKDIR $WORK

COPY requirements.txt $WORK
RUN pip install -r requirements.txt
ADD . $WORK

EXPOSE  5000
CMD ["python", "index.py"]
