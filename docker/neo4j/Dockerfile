# load neo4j image
FROM neo4j:4.4.26-community

# enable graph data science library and apoc
ENV NEO4JLABS_PLUGINS='["graph-data-science", "apoc"]'

# make sure git is installed
RUN apt-get update && apt-get install -y git

# clone the repo into /home/neo4j
RUN git clone https://github.com/neo4j-graph-examples/airport-routes.git /home/neo4j

# load airport data into neo4j, set initial password, and start neo4j
CMD neo4j-admin load --from=/home/neo4j/data/neo4j.dump --database=neo4j --force && neo4j-admin set-initial-password "${NEO4J_PASSWORD}" && neo4j start && tail -f /dev/null
