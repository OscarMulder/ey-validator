FROM python:3
LABEL maintainer="Oscar Mulder <oscar.mulder@live.nl>"
RUN apt-get update -y
RUN apt-get install -y tesseract-ocr
RUN apt-get install -y poppler-utils
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
CMD flask run --host=0.0.0.0
EXPOSE 5000
