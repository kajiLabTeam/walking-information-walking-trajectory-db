FROM postgres:17.2

COPY ./db/sql/migration /docker-entrypoint-initdb.d
COPY ./db/sql/demo /docker-entrypoint-initdb.d

