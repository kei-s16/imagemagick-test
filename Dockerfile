FROM python:slim

RUN apt-get update -qq \
	&& apt-get install -y -qq imagemagick time \
	&& rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

CMD ["time", "python", "/main.py"]
