#!/bin/bash

# Copy into a hash
catmandu convert YAML to YAML --fix 'copy_field(hello,my.hash)' < ../data/sample.yml

# Copy into an array
catmandu convert YAML to YAML --fix 'copy_field(hello,my.array.$append)' < ../data/sample.yml

# Copy all
catmandu convert YAML to YAML --fix 'copy_field(colors.*,my.array.$append)' < ../data/sample.yml
