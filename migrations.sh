#!/bin/bash

echo "Running cqlsh on cassandra:9160..."
cqlsh cassandra 9160 -f /go/keyspace.cql
echo "cqlsh done."
echo "Running migrations..."
migrate -url "cassandra://cassandra:9042/bookx?consistency=local_one" up
echo "Migrations done."
echo "Listening on 8081 to tell docker-compose we are done."
nc -l -p 8081
