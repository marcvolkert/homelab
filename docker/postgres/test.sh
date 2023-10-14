#! /bin/bash
# this script builds and runs the postgres-test image to facilitate testing

# build the image
docker build -t postgres-test .

# run the container
docker run --rm -it -p 5432:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres -e DWH_USER=dwh -e DWH_PASSWORD=dwh -e DWH_DB=dwh postgres-test

# drop the image
docker rmi postgres-test

# exit
exit 0
