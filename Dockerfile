FROM python:3.8.5
LABEL author="Даниил Лапшенков" version='1'
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY requirements.txt /code 
RUN pip install --upgrade pip
RUN pip install -r /code/requirements.txt
COPY . /code
CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
