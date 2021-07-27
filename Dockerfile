FROM python:3
ENV PYTHONUNBUFFERED=1
RUN apt-get install default-libmysqlclient-dev
RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /code/
