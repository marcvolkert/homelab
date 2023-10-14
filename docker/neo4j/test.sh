#! /bin/bash
# this script builds and runs the neo4j-test image to facilitate testing

# build the image
docker build -t neo4j-test .

# run the container
docker run --rm -it -p 7474:7474 -p 7687:7687 -e NEO4J_PASSWORD=neo4j neo4j-test

# clean up
docker rmi neo4j-test

# exit
exit 0