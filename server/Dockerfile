FROM python:3.9-bullseye
#FROM --platform=linux/amd64 python:3.9-bullseye

WORKDIR /usr/src/app

COPY ./requirements.txt ./
COPY ./main.py ./
COPY ./models.py ./
COPY ./utils.py ./

# Get the required ODBC driver and header files
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install msodbcsql18 unixodbc-dev -y

# Install pip requirements
RUN python -m pip install --upgrade pip && \
python -m pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]