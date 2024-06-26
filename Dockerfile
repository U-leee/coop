FROM python:3.10.8

RUN mkdir /app

WORKDIR /app

COPY coop_project/mysite/ /app

RUN pip3 install -r requirements.txt

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000" ]

EXPOSE 8000
