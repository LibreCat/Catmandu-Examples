#!/bin/bash

# Remove one
catmandu convert YAML to YAML --fix 'remove_field(hello)' < ../data/sample.yml

# Remove an array item (removes blue)
catmandu convert YAML to YAML --fix 'remove_field(colors.1)' < ../data/sample.yml
