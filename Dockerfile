FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY wait-for-it.sh /code/
EXPOSE 8000
RUN chmod +x ${PWD}/wait-for-it.sh
# ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]

