# Use docker to develop and test code with databases.
Requires docker desktop installed on machine. These commands are for test only do not use the passwords in these commands for production :)

## MSSQL:
```
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=G7wFb2b7R4WhFSFv" \
   -p 1433:1433 --name mssql -h mssql \
   -d mcr.microsoft.com/mssql/server:2019-latest
```

You can now connect to localhost on port 1433 with user SA and password "G7wFb2b7R4WhFSFv" using your favorite db development IDE.

## MySql
```
docker run -e MYSQL_ROOT_PASSWORD=G7wFb2b7R4WhFSFv -e MYSQL_DATABASE=mySchema \
-p 3306:3306 --name mysql \
-d mysql:latest
```

You can now connect to localhost on port 3306 with user root and password "G7wFb2b7R4WhFSFv" using your favorite db development IDE.

## MariaDb
```
docker run -e MARIADB_ROOT_PASSWORD=G7wFb2b7R4WhFSFv -e MARIADB_DATABASE=maSchema \
-p 3307:3306 --name mariadb \
-d mariadb:latest
```

You can now connect to localhost on port 3307 with user root and password "G7wFb2b7R4WhFSFv" using your favorite db development IDE.

## PostgreSQL
```
docker run -e POSTGRES_PASSWORD=G7wFb2b7R4WhFSFv \
-p 5432:5432 --name pgsql \
-d postgres:latest
```

You can now connect to localhost on port 3306 with user postgres and password "G7wFb2b7R4WhFSFv" using your favorite db development IDE.

## Oracle eXpress Edition
Note: Requires your docker instance to have 3-4gb of memory as the db will crash otherwise.

```
deltaforce
docker run -e "ORACLE_PASSWORD=G7wFb2b7R4WhFSFv" -e "APP_USER=xdb" -e "APP_USER_PASSWORD=G7wFb2b7R4WhFSFv" \
-p 1521:1521 --name oxsql \
-d gvenzl/oracle-xe:18-slim
```

You can now connect to localhost on port 3306 with user xdb and password "G7wFb2b7R4WhFSFv" using your favorite db development IDE.

More details here: https://hub.docker.com/r/oracleinanutshell/oracle-xe-11g

## Stop db's
find container id's
```
docker ps -a   
```

Kill the db's running container
```
docker kill <container-id>
```

Cleanup the running instances
```
docker rm -v $(docker ps -a -q -f status=exited) 
```
