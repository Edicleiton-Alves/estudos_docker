FROM python:3.7

WORKDIR /code

RUN pip3 install psycopg2

COPY list-data-table.py /code/

CMD ["python", "list-data-table.py"]
