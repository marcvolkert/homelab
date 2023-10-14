# inherit postgres
FROM postgres:latest

# init database with all the sql files in the sql folder
COPY ./initdb /docker-entrypoint-initdb.d
