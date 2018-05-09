FROM lbosqmsft/mssql-python-pyodbc
MAINTAINER sexysw

RUN pip install pip --upgrade
RUN pip install django
RUN pip install django-pyodbc-azure
RUN apt-get install -y vim

EXPOSE 20568
ADD . /code
WORKDIR /code
CMD ./start_server.sh
