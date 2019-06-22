#!/bin/bash

# Write the first charater in capitals and keep only the title
catmandu convert JSON to YAML --fix 'capitalize(title);retain(title)' < ../data/example.json
