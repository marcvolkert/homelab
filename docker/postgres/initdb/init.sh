#!/bin/bash

# kill on error
set -e

# create database and user with global env vars (see Dockerfile)
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER $DWH_USER WITH PASSWORD '$DWH_PASSWORD';
    CREATE DATABASE $DWH_USER;
    GRANT ALL PRIVILEGES ON DATABASE $DWH_USER TO $DWH_USER;
EOSQL