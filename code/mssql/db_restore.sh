#!/usr/bin/env bash
# This needs to be ran after the db_docker have started to restore the database inside the docker :)
# oystein fixed it
DOCKER_MSSQL_NAME="export_db"
MSSQL_HOST="localhost"
SA_USER="SA"
MYSQL_SA_PASSWORD="hackme"

sudo docker exec -it $DOCKER_MSSQL_NAME /opt/mssql-tools/bin/sqlcmd -S $MSSQL_HOST -U $SA_USER -P $MYSQL_SA_PASSWORD -Q 'RESTORE FILELISTONLY FROM DISK = "/var/opt/mssql/export_db.bak"'
sudo docker exec -it $DOCKER_MSSQL_NAME /opt/mssql-tools/bin/sqlcmd -S $MSSQL_HOST -U $SA_USER -P $MYSQL_SA_PASSWORD -Q 'RESTORE DATABASE eHelse FROM DISK = "/var/opt/mssql/export_db.bak" WITH MOVE "export" TO "/var/opt/mssql/data/export_db.mdf", MOVE "export_log" TO "/var/opt/mssql/data/export_log.ldf"'
#sudo docker exec -it $DOCKER_MSSQL_NAME /opt/mssql-tools/bin/sqlcmd -S $MSSQL_HOST -U $SA_USER -P $MYSQL_SA_PASSWORD -Q 'RESTORE DATABASE eHelse FROM DISK = "/var/opt/mssql/export_db.bak"'
sudo docker exec -it $DOCKER_MSSQL_NAME /opt/mssql-tools/bin/sqlcmd -S $MSSQL_HOST  -U $SA_USER -P $MYSQL_SA_PASSWORD -Q 'SELECT Name FROM sys.Databases'
