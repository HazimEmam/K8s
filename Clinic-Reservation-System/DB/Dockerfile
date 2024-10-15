FROM postgres:16.0

ENV POSTGRES_DB=clinicreservationsystem
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Optional: Copy any initialization scripts
# For example, if you have an SQL file to initialize the database, uncomment the following line:
COPY ./init.sql /docker-entrypoint-initdb.d/

# Expose the database port
EXPOSE 5432
