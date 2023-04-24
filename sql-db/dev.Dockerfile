FROM mariadb:10.9.5
WORKDIR /db
ENV MARIADB_DATABASE "realtime-ocpp-sql-db"
ENV MARIADB_ROOT_PASSWORD "pass"
# the following should help with "Incorrect definition of table mysql.column_stats" error
ENV MARIADB_AUTO_UPGRADE: "1"
ENV MARIADB_INITDB_SKIP_TZINFO: "1"

EXPOSE 3306