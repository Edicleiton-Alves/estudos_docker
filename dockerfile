# Imagem base
FROM python:3.7

# Seta o diretório de trabalho
WORKDIR /code

# Instala dependências do python
RUN pip3 install psycopg2

# Copia o código Python para dentro do container
COPY list-data-table.py /code/

# Executa o código em python
CMD ["python", "list-data-table.py"]
