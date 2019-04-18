FROM python:3
LABEL maintainer="Oscar Mulder <oscar.mulder@live.nl>"
RUN apt-get update -y
RUN apt-get install -y tesseract-ocr
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
CMD flask run
EXPOSE 5000