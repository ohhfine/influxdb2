#!/bin/bash

curl --user influx:yababy -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE "go-metrics"'
curl --user influx:yababy -XPOST 'http://localhost:8086/query' --data-urlencode 'CREATE USER sensu WITH PASSWORD "sensu"'
curl --user influx:yababy -XPOST 'http://localhost:8086/query' --data-urlencode 'GRANT ALL ON go-metrics TO sensu'