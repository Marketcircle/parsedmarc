FROM python:3.8

LABEL maintainer "Marketcircle Cloud <cloud@marketcircle.com>"

WORKDIR /parsedmarc
ADD requirements.txt .
RUN pip install -r requirements.txt

ADD . /parsedmarc
RUN pip install .

CMD parsedmarc -c conf/parsedmarc.ini
