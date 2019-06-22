#!/bin/bash

# Move into a hash
catmandu convert YAML to YAML --fix 'move_field(hello,my.hash)' < ../data/sample.yml

# Move into an array
catmandu convert YAML to YAML --fix 'move_field(hello,my.array.$append)' < ../data/sample.yml

# Move all
catmandu convert YAML to YAML --fix 'move_field(colors.*,my.array.$append)' < ../data/sample.yml
