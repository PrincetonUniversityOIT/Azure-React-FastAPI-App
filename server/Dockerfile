FROM python:3.9-buster
#FROM --platform=linux/amd64 python:3.9-bullseye

ARG db_pass
ENV DB_SERVER="sb-prgr1-eastus-dbsrvr-001.database.windows.net"
ENV DB_NAME="sb-prgr1-eastus-db-001"
ENV DB_USER="libadmin"
ENV DB_PASS=${db_pass}
ENV DB_DRIVER="{ODBC Driver 17 for SQL Server}"
ENV DB_PORT="1433"

WORKDIR /usr/src/app
COPY ./requirements.txt ./
COPY ./main.py ./
COPY ./models.py ./
COPY ./utils.py ./
COPY ./testAzureSQLConnect.py ./

#RUN wget http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1.4_amd64.deb
#RUN apt-get install ./multiarch-support_2.27-3ubuntu1.4_amd64.deb

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/9/prod.list > /etc/apt/sources.list.d/mssql-release.list 
RUN apt-get update 
#RUN apt-get install -y multiarch-support
#RUN apt-get install -y unixodbc-dev
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17 
RUN apt-get install -y unixodbc-dev
#RUN ACCEPT_EULA=Y apt-get install -y mssql-tools

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt


CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]