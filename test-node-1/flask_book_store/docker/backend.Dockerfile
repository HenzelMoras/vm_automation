FROM postgres

# Copy initialization script
COPY init.sql /docker-entrypoint-initdb.d/

# Set required environment variables
ENV POSTGRES_PASSWORD=passwd

EXPOSE 5432 54321